-- SqlServer.SA SqlServer.2019
DECLARE @json NVarChar(4000) -- String
SET     @json = N'{ "test" : [ 10, 20 ] }'
DECLARE @path NVarChar(4000) -- String
SET     @path = N'$.test'

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(@json, @path) [t1]

