﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR [p].[Text] NOT LIKE N'%[^	
                 　]%'

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

