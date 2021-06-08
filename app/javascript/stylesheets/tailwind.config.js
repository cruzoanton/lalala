module.exports = {
    purge: [],
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {
            colors: {
                green: {
                    "busmon-dark": '#3B837C'
                },
                secondblack: '#626466'
            },
            width: {
                'auth': '540px'
            },
            height: {
                'auth': '554px'
            }
        },
        left: {
            'auth': '450px'
        },
        fontFamily: {
            sans: ['Kodchasan', 'sans-serif']
        },
        fontSize: {
            heading: ['32px', '42px'],
            subheading: ['16px', '24px'],
            label: ['14px', '18px'],
            link: ['14px', '22px']
        },
        fontWeight: {
            normal: 400,
            bold: 700,
            semibold: 600
        },
        variants: {
            extend: {},
        },
        plugins: [],
    }
}
