require 'search_in_file'

class FilesController < ApplicationController
  def new
    if params[:path].to_s.length >0
      @path = Rails.root.to_s + '/' + params[:path].to_s
      @arrayFilesAll = Array.new # stores all files under path
      @contents = Array.new
      Dir.chdir(@path)
      @arrayFilesAll = Dir.glob("**/*.{doc,docx,txt,pdf}", base: @path)
      # searchForContent
      @arrayFilesAll.each do |file|
        hash_file = SearchInFile.search(file, params[:word].to_s)
        if hash_file.size>0
          content = hash_file[0][:paragraphs].join('')
          @contents.append(content)
        end
      end
    end
  end
end
