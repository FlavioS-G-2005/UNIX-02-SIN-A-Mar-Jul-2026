

## Task 1
Command: `grep -cE "^[^#]" firewall.log`
Result: 100000
Explanation: `^` anchors the start of the line; `[^#]` is a negated character class that excludes lines beginning with `#` (the 4 header lines). `-c` counts matching lines.

---

## Task 2
Command: `grep -cE " (DROP|REJECT) " firewall.log`
Result: 60156
Explanation: Spaces around the group `(DROP|REJECT)` ensure the match targets the action field exactly, not those letters elsewhere. `|` is the alternation operator inside the grouping `()`.

---

## Task 3
Command: `grep -cE " 11\." firewall.log`
Result: 33217
Explanation: The space before `11` anchors the match to the start of the src-ip field. `\.` escapes the dot so it is treated as a literal character, avoiding false matches like `110` or `119`.

---

## Task 4
Command: `grep -cE "[0-9]{7}$" firewall.log`
Result: 2343
Explanation: `[0-9]{7}` uses the quantifier `{n}` to require exactly 7 digits. `$` anchors to the end of the line, ensuring the size field has exactly 7 digits (>= 1,000,000).

---

## Task 5
Command: `sed -E 's/^([0-9-]+) [0-9:]+ ([A-Z]+) ([A-Z]+) .*/\1 \2 \3/' firewall.log | grep -v "^#" | head -5`
Result:
2018-05-25 FORWARD TCP
2018-02-22 FORWARD UDP
2018-03-20 REJECT UDP
2018-11-08 REJECT TCP
2018-07-24 REJECT TCP
Explanation: Three capture groups `()` capture date, action and protocol; `.*` consumes the rest of the line. Backreferences `\1 \2 \3` rebuild the line with only those three fields.

---

## Task 6
Command: `grep -cE " ACCEPT TCP .* 80 [0-9]+$" firewall.log`
Result: 93
Explanation: Literals ` ACCEPT TCP ` and ` 80 ` anchor the correct fields; `.*` allows any content between them. `[0-9]+$` ensures `80` is the dst-port field and not elsewhere, since size is the only field after it at end of line.

---

## Task 7
Command: `grep -cE "^[0-9-]+ 0[0-2]:" firewall.log`
Result: 13138
Explanation: `^[0-9-]+` anchors to the start and consumes the date field; `0[0-2]:` uses a character-class range to match only hours 00, 01 or 02, ensuring the time comes right after the date field.

---

## Bonus
Regex: `^\S+$`
Explanation: `^` and `$` anchor start and end of line; `\S+` (negated space class with quantifier) matches one or more non-space characters, excluding any line that contains spaces like "that server is broken".