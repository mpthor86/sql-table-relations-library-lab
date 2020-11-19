def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  JOIN series ON books.series_id = series.id
  WHERE series.id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(characters.motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(*) AS most_times
  FROM characters
  JOIN authors ON authors.id = characters.author_id
  GROUP BY characters.species
  ORDER BY most_times DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series ON authors.id = series.author_id
  JOIN subgenres ON series.subgenre_id = subgenres.id
  GROUP BY authors.name"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  JOIN authors ON series.author_id = authors.id
  JOIN characters ON characters.author_id = authors.id
  GROUP BY characters.species
  ORDER BY characters.species DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) AS in_books
  FROM characters
  JOIN character_books ON characters.id = character_books.character_id
  JOIN books ON books.id = character_books.book_id
  GROUP BY characters.name
  ORDER BY in_books DESC, characters.name"
end

  #JOIN authors ON characters.author_id = authors.id
  #JOIN character_books ON characters.id = character_books.character_id
  #JOIN books ON books.id = character_books.book_id
  #JOIN series ON series.id = books.series_id
  #JOIN subgenres ON subgenres.id = series.subgenre_id
