module DocumentsHelper
  # array_of_lines = []

  #import the file as an array
  # File.open("./FL_insurance_sample.csv", "r") do |f|
  #   f.each_line do |line|
  #   array_of_lines += line.split(/\t|\n|\r|\r\n/)
  # end

  # def sort_by_first_value_number()
  # #sort by first value, if number is the first value
  # #converting to integers and comparing two items in the callback (sorting on them)
  # array_of_lines! { |a, b| a[0].to_i <=> b[0].to_i }
  # #modify the existing array
  # array_of_lines.uniq!(&:first)
  # array_of_lines.each { |line| p line }
  # end

  def select_service(service, document)
    # Just one more option you have for handling the form data.
    # Example of how you can handle the various "services". See
    # changes in application.html.erb for greater context!
    services = {
        "word_count": document.word_count,
        "rm_duplicate": document.rm_duplicate,
        "sort": document.sort
    }
    services[service]
  end

end
