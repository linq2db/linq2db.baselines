﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		[p].[Str]
	FROM
		[Issue3360Table] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		CAST('Str' AS VarChar(Max))
	FROM
		[cte] [t1]
			CROSS JOIN [Issue3360Table] [r]
	WHERE
		[t1].[Id] = [r].[Id] + 1
)
SELECT
	[t2].[Id],
	[t2].[Str]
FROM
	[cte] [t2]

