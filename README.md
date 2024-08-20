Rails version: 7.1.3.4
Ruby version: ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-linux]

"Beginning Rails 6", 4th edition, copyright 2020, Apress, Sommerville, etc.

rails g scaffold Article title:string location:string exerpt:string body:text published_at:datetime

rails g model User email:string password:string

rails g migration rename_password_to_hashed_password

rails g model Profile user:references name:string birthday:date bio:text color:string twitter:string

rails g migration add_user_reference_to_articles user:references

rails g model Category name:string

rails g migration CreateJoinTableArticlesCategories article category

rails g model Comment article_id:integer name:string email:string body:text

rails g controller users

rails g controller comments

