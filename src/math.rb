# math.rb
class MyMath
  def self.add(a, b)
    var0=a+b

    puts ''
    puts a.to_s + '+' + b.to_s + '='
    puts var0

    var0
  end

  def self.sub(a,b)
    var0=a-b

    puts ''
    puts a.to_s + '-' + b.to_s + '='
    puts var0

    var0
  end

  def self.mul(a,b)
    var0=a*b

    puts ''
    puts a.to_s + '*' + b.to_s + '='
    puts var0

    var0    
  end

  def self.div(a, b)
    var0=a/b

    puts ''
    puts a.to_s + '/' + b.to_s + '='
    puts var0

    var0
  end

  def self.pow(a)
    var0=a * a

    if a >= 1
      if a > 1
        if a * a >= 1
          puts 'this'
          puts 'passed'
        end
      elsif a * a >= -1
        puts 'this'
        puts 'fail'
      end
    else
      puts 'and now'
      puts 'all done'
    end
  end
end 