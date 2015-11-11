
class Board
  attr_reader :cols, :rows, :matriz
  def initialize(cols, rows)
    @cols = cols
    @rows = rows
    setMatriz()
    printMatriz()
  end
  
  def setMatriz
    $matriz = Matrix.empty(@rows, @cols)
    $matriz.each do |e, row, col|
      $matriz[row][col] = '|'
    end
  end

  def printMatriz
    $matriz.each do |e, row, col|
      puts " #{e} "
    end
  end
end