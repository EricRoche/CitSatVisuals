# One graph to demo the whole process

#Fixing Levels
#Convert to factor
CITSAT$As.a.place.to.live = factor(CITSAT$As.a.place.to.live)
CITSAT$Race = factor(CITSAT$Race)


#Apply factor level names
levels(CITSAT$As.a.place.to.live) = c("Poor","Below Avg.","Neutral","Good","Excellent", "NA")
levels(CITSAT$Race) = c("Asian/Pacific Islander", "White" , "American Indian/Eskimo", "Black/African American", "Other","NA")

#Converting to frequency
###INSERT HERE####




#Graphing it
As.a.place.to.live.RACE.facet = ggplot(CITSAT, aes(As.a.place.to.live, fill=factor(As.a.place.to.live))) + 
  geom_bar(binwidth=.5) + 
  facet_wrap(~Race) +
  labs(
    title = "Kansas City as a Place to Live by Race",
    x="Citizen Survey Results",
    y="Number of Responses") +
  theme(legend.position = "top", 
        axis.text.x = element_text(angle =45, vjust =.75)) +
  scale_fill_discrete(name="Survey Score",
                      breaks=c("1","2","3","4","5"),
                      labels=c("Poor", "Below Avg.", "Neutral", "Good","Excellent"))