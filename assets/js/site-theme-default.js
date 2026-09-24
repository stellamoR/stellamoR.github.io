// Loaded before the theme runtime so first-time visitors render in light mode.
const savedTheme = localStorage.getItem("theme");

if (!["light", "dark", "system"].includes(savedTheme)) {
  localStorage.setItem("theme", "light");
}
