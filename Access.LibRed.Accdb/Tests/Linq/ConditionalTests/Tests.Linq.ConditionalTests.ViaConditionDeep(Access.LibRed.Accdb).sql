-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	[x].[StringProp] = '1' OR [x].[StringProp] IS NULL,
	CASE
		WHEN [x].[StringProp] = '2' THEN True
		ELSE False
	END,
	[x].[StringProp],
	1,
	CASE
		WHEN [x].[StringProp] IS NULL THEN ''
		ELSE [x].[StringProp]
	END + '2',
	2
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN '2'
		WHEN [x].[StringProp] = '2' THEN [x].[StringProp]
		ELSE CASE
			WHEN [x].[StringProp] IS NULL THEN ''
			ELSE [x].[StringProp]
		END + '2'
	END LIKE '%2' AND
	CASE
		WHEN [x].[StringProp] = '1' OR [x].[StringProp] IS NULL THEN NULL
		WHEN [x].[StringProp] = '2' THEN 1
		ELSE 2
	END = 2

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

