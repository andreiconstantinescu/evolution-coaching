menuItems = [{
    name: 'Qui',
    url: 'who',
    id: 'id-who'

  },{
    name: 'Quelle',
    url:  'what',
    id: 'id-what'

  },{
    name: 'Comment',
    url: 'how',
    id: 'id-how'

  },{
    name: 'Contact',
    url: 'contact',
    id: 'id-contact'

  }]

page = document.location.pathname.split('/')[document.location.pathname.split('/').length - 1]


$('#navbar').html(templates.navbar({
    logo: '/img/Logos/logo-' + (page || 'who') + '.svg',
    logotype: '/img/Logos/logotype-' + (page || 'who') + '.svg',
    menuItems: menuItems,
    className: (page || 'who')
  })
)

if (!page)
  page = 'home'

$('#content').addClass(page + '-page')
$('#navbar').addClass(page + '-page-navbar')

$('.id-' + page).addClass('active')