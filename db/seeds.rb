# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

YogaPose.create!(
  name:         'Boat',
  sanskrit:     'Paripurna Navasana',
  part_of_body: 'Abs'
)

YogaPose.create!(
  name:         'Bridge',
  sanskrit:     'Setu Bandha Sarvangasana',
  part_of_body: 'Abs'
)

YogaPose.create!(
  name:         'Downward-Facing Dog',
  sanskrit:     'Adho Mukha Svanasana',
  part_of_body: 'Arms'
)

YogaPose.create!(
  name:         'Crow',
  sanskrit:     'Bakasana',
  part_of_body: 'Arms'
)

YogaPose.create!(
  name:         'Cat',
  sanskrit:     'Marjaryasana',
  part_of_body: 'Hips'
)

YogaPose.create!(
  name:         'Cow',
  sanskrit:     'Bitilasana',
  part_of_body: 'Hips'
)
