-- SqlServer.2016.MS SqlServer.2016

SELECT
	[x].[Id],
	IIF([x].[StringProp] = N'1' OR [x].[StringProp] IS NULL, 1, 0),
	IIF([x].[StringProp] = N'2', 1, 0),
	[x].[StringProp],
	1,
	[x].[StringProp] + N'2',
	2
FROM
	[ConditionalData] [x]
WHERE
	CASE
		WHEN [x].[StringProp] = N'1' OR [x].[StringProp] IS NULL
			THEN N'2'
		WHEN [x].[StringProp] = N'2' THEN [x].[StringProp]
		ELSE [x].[StringProp] + N'2'
	END LIKE N'%2' ESCAPE N'~' AND
	CASE
		WHEN [x].[StringProp] = N'1' OR [x].[StringProp] IS NULL
			THEN NULL
		WHEN [x].[StringProp] = N'2' THEN 1
		ELSE 2
	END = 2

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

