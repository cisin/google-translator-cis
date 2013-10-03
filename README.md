google-translate-cis
====================

With the help of this gem you can easily convert one language text into another and it is a simple language converter which you can use in your application. :-)

INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)

<pre>
gem install google-translate-cis
</pre>

 
Add this following line in your Gemfile and then run bundle install. 
<pre>
gem 'google-translate-cis' 
</pre>



USAGE

Once you have installed this gem you can do the following :-


<pre>
Translator.translate("Text goes here", "Language code into which you want to convert", "Language code from which language you are converting")
Translator.translate("Hello","ga","en")
Output: Dia duit
</pre>

We have used Google library to develop this Gem. So all credit goes to Google. :-)
