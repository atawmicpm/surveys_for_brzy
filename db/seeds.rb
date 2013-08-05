# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


topic = Topic.create(subject: 'Breezy Survey System')

topic.questions.build(question: 'How many printers do you have at home?').save
topic.questions.build(question: 'How often do you print?').save
topic.questions.build(question: 'Are you able to print from your mobile device now?').save
topic.questions.build(question: 'What types of documents do you print from your mobile device?').save

topic = Topic.create(subject: 'Favorite Language Survey')

topic.questions.build(question: 'What is your favorite programming language?').save
topic.questions.build(question: 'What is your favorite framework?').save
topic.questions.build(question: 'How often do you program?').save
topic.questions.build(question: 'Why do you program?').save
topic.questions.build(question: 'Anything else?').save

