﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF(NOT [grp].[Active], 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

