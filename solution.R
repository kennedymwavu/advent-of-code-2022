inventory <- readLines('input.txt')

# initialize totals for the current elf:
current_elf <- 0

# initialize top 3:
top3 <- numeric(length = 3L)

# elf counter:
counter <- 0

for (i in seq_along(inventory)) {
    if (inventory[i] == '') {
        counter <- counter + 1

        # first 3 elves:
        if (counter <= 3) {
            top3[counter] <- current_elf
            
            # reset `current_elf`:
            current_elf <- 0
            next
        }

        if (current_elf > min(top3)) {
            top3[which.min(top3)] <- current_elf
        }

        # reset `current_elf`:
        current_elf <- 0
        next
    }

    current_elf <- current_elf + as.numeric(inventory[i])
}

# part 1:
print(max(top3))

# part 2:
print(sum(top3))