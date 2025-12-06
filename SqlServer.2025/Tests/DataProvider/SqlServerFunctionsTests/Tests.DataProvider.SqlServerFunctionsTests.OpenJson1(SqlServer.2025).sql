-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(N'{ "test" : 1 }') [t1]

