# Team Members

TeamMember.create(
  first_name: 'Tony',
  last_name: 'Coconate',
  title: 'Principal Consultant',
  hired_at: Time.now-1.month,
  email: 'tony.coconate@devmynd.com',
  nickname: 'T.C.'
)

TeamMember.create(
  first_name: 'Randy',
  last_name: 'Burgess',
  title: 'Consultant',
  hired_at: Time.now-1.year,
  email: 'randy.burgess@devmynd.com',
  nickname: 'Randerz'
)

# Sources

Source.create(
  name: 'Twitter',
  source_type: 'twitter',
  preferences: {
    query: {
      search_term: 'coconate',
      hashtag: '#ruby',
      handle: '@tonycoco'
    }
  }
)

# Stories

8.times do
  Story.create(
    source: Source.all.sample,
    team_member: TeamMember.all.sample,
    preferences: {
      test: '123'
    },
    source_uid: Digest::SHA1.hexdigest(Time.zone.now.to_s)
  )
end
