-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(N'{ "test" : 1 }') [t1]

