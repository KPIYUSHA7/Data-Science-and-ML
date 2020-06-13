setwd("C:/Users/Pranav/Desktop/Piyusha")
#Import Sales Data
data = read.table('R/Train_UWu5bXk.txt', header = T, sep = ",")

#Choose smaller data of item type, sales and MRP
new_data = data.frame(data$Item_Type,data$Item_MRP,data$Item_Outlet_Sales)
colnames(new_data) = c("Type","MRP","Sales")
head(new_data)

#Data frame of Type and Sales

type = data.frame(new_data$Type,new_data$Sales)
colnames(type) = c("Type","Sales")

#Data Frame of MRP and Sales
MRP = data.frame(new_data$MRP,new_data$Sales)
colnames(MRP) = c("MRP","Sales")

head(type)
head(MRP)



plot(MRP, xlim = range(pretty(c(0,MRP$MRP))), main = "MRP vs SALES", col = rainbow(20))


#Sorting Logic
a = c("dd","fg","nm","nm", "as")
sort(a)
index = order(a)
index
a[index]


#Order types in ascending fashion and order the sales to produce new ordered data frame

index_1 = order(type$Type)
index_1
head(index_1)
sales_new = type$Sales[index_1]
type_sorted = sort(type$Type)
final_data = data.frame(type_sorted, sales_new)
head(final_data)
options(max.print = 99999)  

#Plot ordered data 
p1 = plot(final_data$type_sorted, final_data$sales_new, main = "Product VS Sales", xlab = "Category", ylab = "Sales", col = rainbow(20))



install.packages("ggplot2")
library(ggplot2)
ggplot(data = final_data, aes(x = final_data$type_sorted, y = final_data$sales_new)) +
  geom_jitter() 


p<-ggplot(data=final_data, aes(x=final_data$type_sorted, y=final_data$sales_new)) +
  geom_bar(stat="identity")
p + coord_flip()



