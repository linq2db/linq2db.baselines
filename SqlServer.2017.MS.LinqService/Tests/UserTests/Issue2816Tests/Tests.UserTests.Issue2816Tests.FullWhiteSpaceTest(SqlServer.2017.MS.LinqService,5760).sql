﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR (TRIM(N'	
                 　' FROM [p].[Text])) = N'')

