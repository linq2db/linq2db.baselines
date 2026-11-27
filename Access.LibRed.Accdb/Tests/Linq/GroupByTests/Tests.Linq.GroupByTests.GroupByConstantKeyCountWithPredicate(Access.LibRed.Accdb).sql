-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	COUNT(CASE
		WHEN [t].[Status] = 3 THEN 1
		ELSE NULL
	END)
FROM
	[GroupByConstantKeyTable] [t]
WHERE
	[t].[MyOtherId] = 12

