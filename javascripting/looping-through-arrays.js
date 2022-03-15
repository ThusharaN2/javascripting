var pets = ['cat', 'dog', 'rat'];
var pluralVersion = pets.map(function(el) {
  return el + 's';
});
console.log(pluralVersion);
