-- SqlServer.2008

SELECT
	SUBSTRING(Coalesce(N', ' + CASE
		WHEN [x].[NullableValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NullableValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NotNullableValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[VarcharValue] LIKE '%A%' ESCAPE N'~' THEN [x].[VarcharValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NVarcharValue]
		ELSE NULL
	END, N''), 3, 2147483647)
FROM
	[SampleClass] [x]
WHERE
	LEN(SUBSTRING(Coalesce(N', ' + CASE
		WHEN [x].[NullableValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NullableValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NotNullableValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[VarcharValue] LIKE '%A%' ESCAPE N'~' THEN [x].[VarcharValue]
		ELSE NULL
	END, N'') + Coalesce(N', ' + CASE
		WHEN [x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~' THEN [x].[NVarcharValue]
		ELSE NULL
	END, N''), 3, 2147483647) + N'.') <> 1

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

