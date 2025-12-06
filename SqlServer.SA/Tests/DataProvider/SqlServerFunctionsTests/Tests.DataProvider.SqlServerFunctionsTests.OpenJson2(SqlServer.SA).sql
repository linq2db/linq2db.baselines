-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(N'{ "test" : [ 10, 20 ] }', N'$.test') [t1]

