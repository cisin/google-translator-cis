require "rubygems"
require "net/http"
require "uri"


class UnSupportedLanguage < RuntimeError
  def initialize(message='')
    @msg = "Language not supported."
  end
end

class Translator
  LANG_CODES = ['sr','lt','lv','iw','cy','ga','id','de','zh-TW','es','sl','ko','it','eu','az','af','sk','pt-PT','no','gl','bg','ar','tr','fa','mk','el','da','yi','ur','uk','ro','ja','zh','sw','mt','ms','is','ka','en','hr','ca','th','ru','hy','vi','tl','sv','hu','hi','fi','sq','pl','fr','et','nl','cs','zh-CN','be']

  def self.translate(text, to="en", from='en' )
    begin
      raise UnSupportedLanguage unless LANG_CODES.include?(to)
      raise UnSupportedLanguage unless LANG_CODES.include?(from)

      uri = URI.parse(URI.encode("http://translate.google.com/translate_a/t?client=t&text=#{text}&hl=en&sl=#{from.to_s.downcase}&tl=#{to.to_s.downcase}&ie=UTF-8&oe=UTF-8&multires=1&otf=1&ssel=3&tsel=3&sc=1".strip))
      response = Net::HTTP.get_response(uri)
      response_body = response.body.gsub(",,,",",0,0,").gsub(",,",",0,")

      if response.is_a?(Net::HTTPSuccess)
        eval(response_body)[0].map{ |translate| translate[0] }.join(" ")
      else
        puts "Error in Translation"
      end

    rescue UnSupportedLanguage
      raise UnSupportedLanguage.new
    rescue => err_msg
      puts "#{err_msg}"
    end
  end
end








