BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'{ "test" : [ 10, 20 ] }'
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'$.test'

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(@p, @p_1) [t1]

