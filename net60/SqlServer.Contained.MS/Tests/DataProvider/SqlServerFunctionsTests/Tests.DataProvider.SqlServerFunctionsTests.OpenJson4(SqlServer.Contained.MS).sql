BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'{ "test" : 1 }'

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(@p_1) [t1]

