# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Song.create(
#   title: "",
#   artist: "",
#   word: "",
#   lyrics: "",
#   youtube_id: "",
#   youtube_start_time: 0,
# )

#Song title:string artist:string word:string lyrics:text used:boolean guessed:boolean
# Song.create(
#   title: "The Exodus Song",
#   artist: "Andy Williams",
#   word: "ancient",
#   lyrics: "This land is mine
# God gave this land to me
# This brave and ancient land to me
# And when the morning sun
# Reveals her hills and plains
# Then I see a land
# Where children can run free
# So take my hand
# And walk this land with me
# A nd walk this lovely land with me
# Though, I am just a man
# When you are by my side
# With the help of God
# I know I can be strong
# To make this land our home
# If I must fight, I'll fight
# To make this land our own
# Until I die, this land is mine",
#   youtube_id: "QEYmomUuveU",
#   youtube_start_time: 18,
# )
#
# Song.create(
#   title: "Take Me to Church",
#   artist: "Hozier",
#   word: "mouthpiece",
#   lyrics: "My lover's got humour
# She's the giggle at a funeral
# Knows everybody's disapproval
# I should've worshipped her sooner
#
# If the heavens ever did speak
# She's the last true mouthpiece
# Every Sunday's getting more bleak
# A fresh poison each week
#
# 'We were born sick,' you heard them say it
#
# My church offers no absolutes
# She tells me, 'Worship in the bedroom.'
# The only heaven I'll be sent to
# Is when I'm alone with you
#
# I was born sick
# But I love it
# Command me to be well
# Aaay. Amen. Amen. Amen.
#
# [Chorus 2x:]
# Take me to church
# I'll worship like a dog at the shrine of your lies
# I'll tell you my sins and you can sharpen your knife
# Offer me that deathless death
# Good God, let me give you my life
#
# If I'm a pagan of the good times
# My lover's the sunlight
# To keep the Goddess on my side
# She demands a sacrifice
#
# Drain the whole sea
# Get something shiny
# Something meaty for the main course
# That's a fine-looking high horse
# What you got in the stable?
# We've a lot of starving faithful
#
# That looks tasty
# That looks plenty
# This is hungry work
#
# [Chorus 2x:]
# Take me to church
# I'll worship like a dog at the shrine of your lies
# I'll tell you my sins so you can sharpen your knife
# Offer me my deathless death
# Good God, let me give you my life
#
# No Masters or Kings
# When the Ritual begins
# There is no sweeter innocence than our gentle sin
#
# In the madness and soil of that sad earthly scene
# Only then I am human
# Only then I am clean
# Ooh oh. Amen. Amen. Amen.
#
# [Chorus 2x:]
# Take me to church
# I'll worship like a dog at the shrine of your lies
# I'll tell you my sins and you can sharpen your knife
# Offer me that deathless death
# Good God, let me give you my life",
#   youtube_id: "MYSVMgRr6pw",
#   youtube_start_time: 12,
# )
#
# Song.create(
#   title: "",
#   artist: "",
#   word: "",
#   lyrics: "When I think back to the first time in my childhood
# When I saw that face, I thought right then
# That's a real good looking boy
#
# I saw myself in the mirror in profile
# For the first time, I thought
# Hey, that's a real good looking boy
#
# And I felt then that I moved
# With all those lucky fucks and angels
# High in the theater in the sky
#
# So I ran to my mother
# I said, 'Hey Mom, take a look at me
# Have you ever seen a teen fly so high?'
#
# That's a real good looking boy
# That's a real good looking boy
#
# She said, 'Son, well you know you're an ugly boy
# You don't really look like him'
# In this long line, there's been some real strange genes
# You got 'em all, you got 'em all with some extras thrown in
#
# That's a real good looking boy
# That's a real good looking boy
# That's a real good looking boy
# That's a real good looking boy
#
# Wise men say
# 'Only fools, only fools rush in'
# But I, I can't help
# Falling in love, in love with you
#
# Now I'm here with you, little darling
# And you say, 'You're beautiful as you are'
# And I've managed somehow to survive
#
# You arrived in my life like a fragrance
# You helped me find a way to laugh
# Now I know how so called beauty lies
#
# God gave him a face
# Then he gave me something above
# God gave me a grace
# Then he gave me your sweet, sweet, sweet love
#
# You make me feel I'm a real good looking boy
# I feel I'm a real good looking boy
# That's a real good looking boy
# That's a real good looking boy",
#   youtube_id: "",
#   youtube_start_time: 0,
# )

require 'csv'

CSV.foreach("db/songs.csv",{:headers=>:first_row}) do |row|
  Song.create(
    title: row[0],
    artist: row[1],
    word: row[2],
    youtube_id: row[3],
    youtube_start_time: row[4],
    lyrics: row[5],
  )
end

#
# Song.create(
#   title: "",
#   artist: "",
#   word: "",
#   lyrics: "",
#   youtube_id: "",
#   youtube_start_time: 0,
# )
#
# Song.create(
#   title: "",
#   artist: "",
#   word: "",
#   lyrics: "",
#   youtube_id: "",
#   youtube_start_time: 0,
# )