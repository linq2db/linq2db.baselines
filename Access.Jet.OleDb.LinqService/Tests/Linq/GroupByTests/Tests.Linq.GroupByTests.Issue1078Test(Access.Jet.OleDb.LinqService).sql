﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF(NOT [grp].[Active], 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

