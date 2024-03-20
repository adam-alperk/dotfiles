## Location of catppuccin-macchiato folder, which contains customised sddm theme.

- Put the `"catppuccin-macchiato"` folder in `/usr/share/sddm/themes/`.
- Set the theme in the ".conf" file (create one if not already present) located in `/etc/sddm.conf.d/` as follows:

```
[Theme]
Current=catppuccin-macchiato
```
