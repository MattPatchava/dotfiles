# OpenOffice.org 2.0 Dotfiles

All paths below are relative to the OOo config directory, which is created by OpenOffice Writer 2.0 at the following path:
`/home/$USER/.openoffice.org2/user/`.

## Files

| File in this repo | Destination |
|---|---|
| `My_OOo_Macros.xba` | `basic/Standard/My_OOo_Macros.xba` |
| `script.xlb` | `basic/Standard/script.xlb` |
| `current.xml` | `config/soffice.cfg/modules/swriter/accelerator/en-US/current.xml` |
| `Matt-Default1.ott` | `template/Matt-Default1.ott` |

## What each file is

**`My_OOo_Macros.xba`** — Basic macro module, currently contains:

- `ToggleInlineCode` — toggles the Source Text character style on the selected text or at the cursor
- `DeleteWordBeforeKeepSpace` — like Ctrl+Backspace but leaves the preceding space intact

**`script.xlb`** — Library index that registers `My_OOo_Macros` as a module in the Standard library. Without this, OOo will not load the macro file.

**`current.xml`** — Writer-specific keybindings. Contains the Ctrl+Backspace binding pointing to `DeleteWordBeforeKeepSpace`.

**`Matt-Default1.ott`** — Default document template with custom styles.

## Notes

- `script.xlb` must reference `My_OOo_Macros` by name or OOo will silently ignore the `.xba` file.
- Keybindings are Writer-specific and live under `modules/swriter/`, not in the global accelerator at `config/soffice.cfg/global/accelerator/`.
