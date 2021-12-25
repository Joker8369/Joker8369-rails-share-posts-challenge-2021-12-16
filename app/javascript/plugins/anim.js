
anime.timeline({ loop: false })
.add({
    targets: '.card-product',
    scale: [14, 1],
    opacity: [0, 1],
    easing: "easeOutCirc",
    duration: 800,
    delay: (el, i) => 800 * i
  });
