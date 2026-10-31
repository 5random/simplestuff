function sortquantity!(qty)
    indx = sortperm(qty, rev = true)
    qty .= qty[indx]
    return indx
end

function sortcustomer(cust, srtperm)
    return cust[srtperm]
end

function production_schedule!(cust, qty)
    indx = sortquantity!(qty)
    return sortcustomer(cust, indx), invperm(indx)
end
