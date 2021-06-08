module.exports = {
    purge: [],
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {
            colors: {
                main: '#3B837C',
                secondblack: '#626466',
                background: '#F9FBFD',
                grey: '#C8CCD9'
            },
            width: {
                'auth': '540px',
                'auth-form': '350px',
                'space': '80px'
            },
            height: {
                'auth': '554px',
                'header': '82px',
                'footer': '131px',
                'reset': '426px'
            },
            borderRadius: {
                'form': '24px'
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
            logo: ['26px', '36px'],
            subheading: ['16px', '24px'],
            label: ['14px', '18px'],
            link: ['14px', '22px']
        },
        variants: {
            extend: {},
        },
        plugins: [],
    }
}
