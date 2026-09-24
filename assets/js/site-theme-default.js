const savedTheme = localStorage.getItem("theme");

if (!["light", "dark", "system"].includes(savedTheme)) {
  localStorage.setItem("theme", "light");
}
