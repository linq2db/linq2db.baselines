﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[Id],
	CAST('str2' AS VarChar(Max))
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CAST('str1' AS VarChar(Max))
FROM
	[Issue3360Table] [p_1]

