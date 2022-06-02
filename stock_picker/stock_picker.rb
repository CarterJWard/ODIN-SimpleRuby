#Stock picker script that recieves a list of prices per day
#will return an array with the best days that were to purchase 
#and sell a stock to give maximum profits
def stock_picker(days)
    puts days.size
    profit = 0
    best = [0,0]
    days.each_with_index do 
        |day, index|
        ((index + 1)..(days.size - 1)).each do
            |index2|
            if profit < (days[index2] - day) then
                profit = (days[index2] - day)
                best[0] = index
                best[1] = index2
            end
        end
    end
    best
end

stock_picker([17,3,6,9,15,8,6,1,10])
