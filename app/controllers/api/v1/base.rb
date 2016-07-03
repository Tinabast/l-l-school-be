class ResumeSerializer < ActiveModel::Serializer
  attributes :name, :position, :communication, :about_me, :id
end

module Api
  module V1
    class Base < Grape::API
      prefix 'api'
      default_format :json
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers

      get 'resumes' do 
        
        render Resume.all
        #render Funding.where(:donorType => params[:donorType])
      end
      get 'resumes/:id' do 
        render Resume.find(params[:id])
        #render Funding.where(:donorType => params[:donorType])
      end
    end
  end
end