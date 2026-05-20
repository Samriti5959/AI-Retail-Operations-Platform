import pandas as pd

# Load dataset
df = pd.read_csv('datasets/sales_data.csv')

# Display first 5 rows
print("First 5 Rows:")
print(df.head())

# Check missing values
print("\nMissing Values:")
print(df.isnull().sum())

# Total revenue
total_revenue = df['Revenue'].sum()

print("\nTotal Revenue:")
print(total_revenue)

# Revenue by store
store_revenue = df.groupby('Store')['Revenue'].sum()

print("\nRevenue by Store:")
print(store_revenue)

# Save cleaned data
df.to_csv('datasets/cleaned_sales_data.csv', index=False)

print("\nCleaned file saved successfully!")