﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry' AND Lower([p].[Taxonomy]) IS NOT NULL

