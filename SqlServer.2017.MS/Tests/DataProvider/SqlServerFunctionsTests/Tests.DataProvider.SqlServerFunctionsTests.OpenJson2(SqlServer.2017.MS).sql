﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'{ "test" : [ 10, 20 ] }'

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(@p, N'$.test') [t1]

