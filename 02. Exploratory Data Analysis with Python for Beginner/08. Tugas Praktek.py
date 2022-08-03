import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Standar variasi kolom product_weight_gram
order_df.loc[:, "product_weight_gram"].std()
# Varians kolom product_weight_gram
order_df.loc[:, "product_weight_gram"].var()
