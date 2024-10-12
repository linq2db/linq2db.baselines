BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END * 2 = ROUND(CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END * 2, 5) AND CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END <> ROUND(CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END, 5)
			THEN ROUND(CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END / 2, 5) * 2
		ELSE ROUND(CASE
			WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
				THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
			ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
		END, 5)
	END
FROM
	[LinqDataTypes] [t]
WHERE
	CASE
		WHEN CAST([t].[MoneyValue] AS Float) * 2 = ROUND(CAST([t].[MoneyValue] AS Float) * 2, 1) AND CAST([t].[MoneyValue] AS Float) <> ROUND(CAST([t].[MoneyValue] AS Float), 1)
			THEN ROUND(CAST([t].[MoneyValue] AS Float) / 2, 1) * 2
		ELSE ROUND(CAST([t].[MoneyValue] AS Float), 1)
	END <> 0

