﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[key],
	[t1].[value],
	[t1].[type]
FROM
	OPENJSON(N'{ "test" : 1 }') [t1]

