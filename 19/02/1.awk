{
    l    = split($0,m,",")
    m[2] = 12
    m[3] = 2
    i    = 1
    while (i < l) {
        if (m[i] == "1")
            m[m[i+3]+1] = m[m[i+1]+1] + m[m[i+2]+1]
        else if (m[i] == "2")
            m[m[i+3]+1] = m[m[i+1]+1] * m[m[i+2]+1]
        else if (m[i] == "99")
            break
        i += 4
    }
}

END {
    print m[1]
}
