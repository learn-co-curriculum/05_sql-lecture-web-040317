require 'sqlite3'
require 'pry'
# 
# module SQLite3
#   class Database
#     def initialize(file_path)
#       @file_path = file_path
#     end
#
#   end
#
#
# end

db = SQLite3::Database.new('chinook.db')


db.execute("SELECT * FROM artists;")

sql = "SELECT * FROM albums;"

more_sql = <<-SQL
SELECT * FROM tracks
JOIN albums
ON albums.AlbumId = tracks.AlbumId;
SQL

binding.pry
db.execute(sql)
