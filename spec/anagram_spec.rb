require('rspec')
require('anagram')

describe ('String#anagrams') do
  it ("will check if a word is an anagram") do
    expect('cat'.anagrams('act')).to(eq('act'))
  end
  it ("will check if  multiple words are an anagram") do
    expect('cat'.anagrams('act,tca,cat,diego,eric,hello')).to(eq('act,tca,cat'))
  end
  it ("will check if  multiple words are an anagram") do
    expect('dog'.anagrams('god,diego,hello,eric,odg,dgo')).to(eq('god,odg,dgo'))
  end
  it ("will check if  multiple words are an anagram") do
    expect('eric'.anagrams('ect,er,ic,diego,cire,ceir,irce')).to(eq('cire,ceir,irce'))
  end

end
