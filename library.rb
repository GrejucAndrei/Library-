
while true
puts "\n[Enter a book title]"
bookTitle = gets.chomp().to_s

if bookTitle == "EXIT" or bookTitle == "exit"
  break
end

puts "\n[Enter the book author]"
bookAuthor = gets.chomp().to_s
puts "\n[Enter the number of pages]"
bookPages = gets.chomp().to_s
puts "\n[Enter the genre of the book]"
bookGenre = gets.chomp().to_s

write_string_in_file = ("Title |" + bookTitle +
  "| Author |" + bookAuthor + "| Pages |" + bookPages +
  "| Genre |" + bookGenre + "| \n")

  puts ("\n" + write_string_in_file + " was succesfully added. \n")
  puts "\nType \"EXIT\" to close the script, or continue adding books"

File.open("books.txt", "a+") do |file|
  file.write(write_string_in_file)
end

end
