# Sample stories created for this classroom project. Running db:seed resets these example books.
Book.destroy_all

book1 = Book.create!(
  title: "The Little Library on the Hill",
  author: "Classroom Writing Team",
  summary: "A group of neighbours creates a library for their community."
)

library_stories = [
  {
    title: "The Little Library on the Hill",
    author: "Classroom Writing Team",
    summary: "A group of neighbours turns an unused room into a place where stories can be shared.",
    pages: [
      ["The Locked Door", "Mina noticed an empty building on the hill every time she walked to school.\n\nOne rainy Monday, she saw a handwritten sign on its door: 'A place for stories, if someone will help.'"],
      ["A Good Idea", "Mina told her friends at lunchtime. They imagined shelves full of books and a desk where people could borrow them.\n\nTheir teacher agreed that even a small library could make a difference."],
      ["The First Shelf", "On Saturday, the neighbours arrived with paint, boxes and a wooden shelf.\n\nNobody had much money, but everyone brought something useful."],
      ["A Surprise", "An older neighbour carried in a box of books he had kept for twenty years.\n\n'Books are better when somebody reads them,' he said."],
      ["Opening Day", "The room smelled of fresh paint and paper. Children wrote labels for each shelf.\n\nThere was no ribbon to cut, so Mina tied one together from leftover string."],
      ["A Place to Return", "The library opened quietly. Then visitors arrived, one by one.\n\nMina placed a notebook by the door. Its first page read: 'What should we read next?'" ]
    ]
  },
  {
    title: "The Curious Engineer",
    author: "Classroom Writing Team",
    summary: "A student learns that making something work often begins with asking one good question.",
    pages: [
      ["The Problem", "Sam wanted a small bridge for a model train. His first bridge bent in the middle.\n\nInstead of giving up, he wrote down what had happened."],
      ["Try Again", "Sam tried folded paper instead of flat paper. The bridge became stronger.\n\nHe learned that the shape of a material matters as much as the material itself."],
      ["Measure", "With a ruler and notebook, Sam measured the distance between the two sides.\n\nHe checked the measurements twice before cutting anything."],
      ["Test", "Sam placed coins on the bridge one at a time. He counted how many it could hold.\n\nTesting gave him evidence instead of guesses."],
      ["Improve", "He added triangle supports under the bridge. The next test went better.\n\nEach failure had taught him how to improve the design."],
      ["Share", "At school, Sam explained his idea to the class.\n\nHis favourite part was not the finished bridge. It was knowing why it worked." ]
    ]
  }
]

library_stories.each do |story|
  book = Book.create!(title: story[:title], author: story[:author], summary: story[:summary])

  story[:pages].each_with_index do |(heading, content), index|
    book.book_pages.create!(position: index + 1, heading: heading, content: content)
  end
end

puts "Created #{Book.count} books and #{BookPage.count} pages."
