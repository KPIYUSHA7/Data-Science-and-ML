setwd("C:/Users/Pranav/Desktop/Piyusha")
#Read sales data

data = read.table('R/Train_UWu5bXk.txt', header = T, sep = ",")
head(data)
colnames(data)
dim(data)
str(data)

#Create sub data frame
new_data = data.frame(data$Item_Type,data$Item_MRP,data$Item_Outlet_Sales)
head(new_data)
colnames(new_data) = c("Type","MRP","Sales")

head(new_data)

mean(new_data$Sales)
sales_data = hist(new_data$Sales, col = "blue", breaks = 18,main = "SALES", xlab = "Sales", xlim = range(pretty(c(0,new_data$Sales))))


price_vs_sales = lm(new_data$MRP ~ new_data$Sales, data = new_data)     

new_data_type = data.frame(new_data$Type,new_data$Sales)
new_data_MRP = data.frame(new_data$MRP,new_data$Sales)
new_data_type

head(new_data_MRP)
plot(new_data_MRP, xlim = range(pretty(c(0,new_data_MRP$new_data.MRP))), main = "MRP vs SALES", col = "red")

