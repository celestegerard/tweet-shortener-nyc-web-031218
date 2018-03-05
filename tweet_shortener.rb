def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(str)
  array = str.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |str|
    puts word_substituter(str)
  end
end

def selective_tweet_shortener(str)
  if str.size > 140
    word_substituter(str)
  else
    str 
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    word_substituter(str)[0..136]+"..."
else
  word_substituter(str)
end
end