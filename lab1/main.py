import pandas as pd

data = pd.read_xml("specialities.xml")
print("2.a Поля:", ", ".join(data.columns.tolist()))

print("2.b")
field_analysis = []
for column in data.columns:
    dtype = 'text' if data[column].dtype == 'object' else data[column].dtype
    max_length = data[column].astype(str).str.len().max() if dtype == 'text' else None
    not_null = not data[column].isnull().any()
    unique_values = data[column].nunique()
    check = data[column].unique() if unique_values <= 5 else None
    field_analysis.append({
        'Поля': column,
        'Тип данных': dtype,
        'Максимальное число символов': max_length,
        'NOT NULL': 'YES' if not_null else 'NO',
        'unique_values': unique_values,
        'check': check,
    })

result_df = pd.DataFrame(field_analysis)
print(result_df.to_string(index=False))