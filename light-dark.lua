function Image(img)
  if img.src:match '%.light%.svg' then
    img2 = img:walk {}
    img2.src = img.src:gsub('%.light%.svg', '.dark.svg')
    img.classes:insert 'quarto-light-image'
    img2.classes:insert 'quarto-dark-image'
  return pandoc.Inlines({img, img2})
  end
end
