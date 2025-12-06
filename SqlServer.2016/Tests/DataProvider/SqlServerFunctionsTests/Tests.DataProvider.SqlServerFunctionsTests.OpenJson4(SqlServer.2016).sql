-- SqlServer.2016
DECLARE @json NVarChar(4000) -- String
SET     @json = N'{ "test" : 1 }'

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(@json) [t1]

