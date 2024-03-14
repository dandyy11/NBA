# Assuming data is already loaded and 'ggplot2' is available

# Points, Rebounds, and Assists vs. Age
ggplot(data, aes(x=age, y=pts)) + geom_point(alpha=0.3) + geom_smooth(method="lm", color="red") + ggtitle("Points vs. Age")
ggplot(data, aes(x=age, y=reb)) + geom_point(alpha=0.3) + geom_smooth(method="lm", color="green") + ggtitle("Rebounds vs. Age")
ggplot(data, aes(x=age, y=ast)) + geom_point(alpha=0.3) + geom_smooth(method="lm", color="blue") + ggtitle("Assists vs. Age")

# Rebounds vs. Player Height
ggplot(data, aes(x=player_height, y=reb)) + geom_point(alpha=0.3) + geom_smooth(method="lm", color="orange") + ggtitle("Rebounds vs. Player Height")
