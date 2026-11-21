# Course data

## Card and Krueger restaurant data

Assignments 02 and 05 use [card-krueger_1994.csv](card-krueger_1994.csv), observed public-use restaurant records from Card and Krueger (1994).
Read the [original readme](card-krueger_readme.txt), copied unchanged from the 2026 course materials.

The readme describes an 820-row file with one row per restaurant interview.
The course CSV has one row per restaurant, with both interviews in separate columns, retaining all 410 restaurants.
The corresponding variable names are:

| Original readme | Course CSV |
|---|---|
| `nj` | `state` |
| `ft` | `empft`, `empft2` |
| `pt` | `emppt`, `emppt2` |
| `mgrs` | `nmgrs`, `nmgrs2` |
| `wage` | `wage_st`, `wage_st2` |
| `status` | `status2` |
| `co_owned` | `co_owned` |
| `bk`, `kfc`, `roys`, `wendys` | `chain`: 1, 2, 3, 4, respectively |

Unsuffixed employment and wage columns describe the first interview; suffix `2` denotes the second.
Calculate FTE from the employment components using `empft + nmgrs + 0.5 * emppt`, and analogously for the second interview.
In this CSV, `sheet` is the original survey-sheet code, and `(state, sheet)` identifies a restaurant.
Missing values are `NA`.

Assignment 02 uses baseline observations available for each measure; Assignment 05 uses restaurants with complete employment components in both waves for every model, so its baseline means need not match Assignment 02.
