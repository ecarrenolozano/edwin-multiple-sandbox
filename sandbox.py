import pandas as pd
from pathlib import Path
import hashlib

from enum import Enum, auto


# Path to the dataset (CSV file)

path = Path("/home/ecarreno/DATASETS/CollecTRI.csv")



data = pd.read_csv(path)

genes = data["target"].unique()

print(genes)

tf_df = data[["source", "TF.category"]].drop_duplicates()
print(tf_df)

def _prefix(string):
    return f"hgnc.symbol:{string}"

print(_prefix(genes[0]))

properties = {}
category = "dbTF"

properties["category"] = (
                "DNA-binding"
                if category == "dbTF"
                else "co-regulatory"
                if category == "coTF"
                else "general initiation"
                if category == "GTF"
                else None
            )

print(properties)




for _, row in data.iterrows():
    # extract source and target
    source_id = row["source"]
    target_id = row["target"]

    # extract edge properties
    properties = {}

    # generate relationship id
    md5 = hashlib.md5(
        "".join(
            [str(source_id), str(target_id)]
            + [str(prop) for prop in properties.values()]
        ).encode("utf-8")
    ).hexdigest()
    print(f"Source:{source_id}")
    print(f"Target:{target_id}")
    print(f"\tmd5: {md5}")
    break