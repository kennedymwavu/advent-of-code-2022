inventory <- readLines('input.txt')

# initialize total calories of the elf carrying the 
# most calories to zero:
total_calories <- 0

# initialize totals for the current elf:
current_elf <- 0

for (entry in inventory) {
    if (entry == '') {
        if (current_elf > total_calories) {
            total_calories <- current_elf
        }

        # reset `current_elf`:
        current_elf <- 0

        next
    }

    current_elf <- current_elf + as.numeric(entry)
}

print(total_calories)
