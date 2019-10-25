# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
#
#
# ==================================================== #
# ======================[USERS]======================= #
# ==================================================== #

User.create(
  username: "cjl248",
  first_name: "chris",
  last_name: "liendo",
  experience: 1,
  password: "abc"
)
User.create(
  username: "foobar",
  first_name: "foo",
  last_name: "bar",
  experience: 3,
  password: "abc"
)

# ==================================================== #
# =================[JOURNAL ENTRIES]================== #
# ==================================================== #

JournalEntry.create(
  user: User.first,
  title: "Lorem ipsum dolor",
  date: Date.today,
  content: "Blandit turpis cursus in hac. Pharetra vel turpis nunc eget lorem
  dolor sed viverra. Condimentum lacinia quis vel eros donec ac. Velit dignissim
  sodales ut eu sem integer vitae justo. In nisl nisi scelerisque eu ultrices
  vitae auctor. Leo vel orci porta non. Ac turpis egestas integer eget aliquet
  nibh praesent tristique."
)
JournalEntry.create(
  user: User.first,
  title: "Sit amet, consectetur",
  date: Date.tomorrow,
  content: "Aliquam vestibulum morbi blandit cursus risus at ultrices. Feugiat
  scelerisque varius morbi enim nunc faucibus a. Convallis a cras semper auctor
  neque vitae tempus quam. Enim ut sem viverra aliquet eget. Ultrices tincidunt
  arcu non sodales."
)

# ==================================================== #
# ======================[GOALS]======================= #
# ==================================================== #

Goal.create(
  user: User.first,
  objective: "finish the FIRST thing",
  importance: 3,
  difficulty: 3,
  reward: "feel good",
  consequence: "feel bad",
  completed: false
)
Goal.create(
  user: User.first,
  objective: "finish the SECOND thing",
  importance: 2,
  difficulty: 1,
  reward: "feel good",
  consequence: "feel bad",
  completed: true
)

# ==================================================== #
# ===============[MEDITATION SESSIONS]================ #
# ==================================================== #

MeditationSession.create(
  user: User.first,
  date: Date.today,
  length: 300,
  category: "anchoring attention"
)
MeditationSession.create(
  user: User.first,
  date: Date.today,
  length: 515,
  category: "body scan"
)
MeditationSession.create(
  user: User.first,
  date: Date.yesterday,
  length: 360,
  category: "observing attention"
)

# ==================================================== #
# ===================[INSPIRATIONS]=================== #
# ==================================================== #

Inspiration.create(
  content: "When you make distraction the focus of attention, it is no longer
  distraction.",
  source: "Stephen Procter"
)
Inspiration.create(
  content: "Fear comes from identification. Trying to defend and uphold an identity
  comes with the fear of failing. Fear is lessened when identification with the
  material/mind created object is transcended and identification is expanded.",
  source: "Ken Wilber"
)
Inspiration.create(
  content: "As long as you resist suffering, it is a slow process because the
  resistance creates more ego to burn up. When you accept suffering, however,
  there is an acceleration of that process which is brought about by the fact
  that you suffer consciously...In the midst of conscious suffering, there is
  already the transmutation. The fire of suffering becomes the light of
  consciousness.",
  source: "A New Earth, Page 102, Eckhart Tolle"
)

# ==================================================== #
# ==============[FAVORITE INSPIRATIONS]=============== #
# ==================================================== #

FavoriteInspiration.create(
  user: User.first,
  inspiration: Inspiration.first,
  rating: 3
)
FavoriteInspiration.create(
  user: User.first,
  inspiration: Inspiration.third,
  rating: 3
)
FavoriteInspiration.create(
  user: User.second,
  inspiration: Inspiration.second,
  rating: 2
)
FavoriteInspiration.create(
  user: User.second,
  inspiration: Inspiration.first,
  rating: 1
)





# END #
