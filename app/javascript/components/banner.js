import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Discover the Secret", "Enter Cocktail Heaven"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
