class AnalisadorLinha
    def initialize(linha, frequencia)
      @linha = linha
      @frequencia = frequencia
    end
    def frequenciaPalavra()
        

        frequenciaNaLinha=@frequencia.split.each_with_object(Hash.new(0)){|palavra, hash| hash[palavra]+=1}
        puts "#{frequenciaNaLinha}"
        valor = frequenciaNaLinha.max_by{|key, value| value}
        
        
        puts "Palavra de maior frequencia na linha #{@linha} é = (#{valor[0]} -> #{valor[1]}x) "

    end

end

p = []
File.open('texto.txt').each do |linha|
    palavraMaisFrequent = AnalisadorLinha.new($. , linha)
    p.push(palavraMaisFrequent)
  end
  
    p.each do |analiser|
    analiser.frequenciaPalavra
    end