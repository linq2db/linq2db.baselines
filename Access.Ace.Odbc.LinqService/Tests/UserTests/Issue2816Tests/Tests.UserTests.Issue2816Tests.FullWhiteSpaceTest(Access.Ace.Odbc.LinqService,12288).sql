﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text]) = '')

