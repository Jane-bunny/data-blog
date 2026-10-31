-- Give saved analysis figures their page's descriptive alt text.
-- Two passes read metadata before visiting images. Existing alt text is preserved.
local fallback_alt = nil

return {
  {
    Meta = function(meta)
      local description = meta["fig-alt"] or meta["image-alt"]
      fallback_alt = description and pandoc.utils.stringify(description) or nil
    end
  },
  {
    Image = function(image)
      if fallback_alt and #image.caption == 0 then
        image.caption = pandoc.Inlines({pandoc.Str(fallback_alt)})
      end
      return image
    end
  }
}
