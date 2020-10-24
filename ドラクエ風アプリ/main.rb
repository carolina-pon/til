class Brave
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "#{name}の攻撃"

    attack_num = rand(4)

    if attack_num == 0
      puts "必殺攻撃"
      damage = calculate_special_attack - monster.defense
    else
      puts "通常攻撃"
      damage = @offense - monster.defense
    end

    monster.hp -= damage

    puts "#{monster.name}は#{damage}のダメージを受けた"
    puts "#{monster.name}の残りのHPは#{monster.hp}だ"
  end

  def calculate_special_attack
    @offense * 1.5
  end
  
end


class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end


  def attack(brave)
    puts "#{name}の攻撃"

    if brave.hp >= brave.hp / 2
      puts "通常攻撃"
      damage = @offense - brave.defense
    else
      puts "#{name}は怒っている"

      damage = @offense - brave.defense
    end

  puts "#{brave.name}は#{damage}のダメージを受けた"
  puts "#{brave.name}の残りのHPは#{brave.hp}だ"

  end

  def calculate_special_attack
    @offense * 1.5
  end
  
end


brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)


# puts <<~TEXT
# NAME：#{brave.name}
# HP：#{brave.hp}
# OFFENSE：#{brave.offense}
# DEFENSE：#{brave.defense}

# NAME：#{monster.name}
# HP：#{monster.hp}
# OFFENSE：#{monster.offense}
# DEFENSE：#{monster.defense}
# TEXT

brave.attack(monster)