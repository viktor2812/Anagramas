def read_file
  #El programa fallo revisarlo adios
  File.open('words.txt', 'r') do |line|
    #while linea = f1.gets.chomp
    line.each_line do |linea|
        Word.create(word: linea.chomp, canonical: Word.canonical(linea))
    end
  end
end
read_file# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 