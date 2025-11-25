import pandas as pd

data = {
    "Soil_Type": ["Red", "Black", "Alluvial", "Laterite", "Red", "Black"],
    "Region": ["Kolar", "Belagavi", "Bidar", "Chikkamagaluru", "Bidar", "Kolar"],
    "Fertilizer": ["Urea", "NPK", "Potash", "Nitrogen", "Urea", "NPK"]
}

df = pd.DataFrame(data)
df.to_csv("fertilizer_data.csv", index=False)
print("fertilizer_data.csv created!")
