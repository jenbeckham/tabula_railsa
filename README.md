The "if params[:name]" statement is not the best way to proceed with this app. It would be better to input a default in the text_field_tag for name. Something like:
<%= text_field_tag :name, "Default" %>
The second value in the text_field_tag is the default value with you could make any thing you want



<!-- == README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>. -->
