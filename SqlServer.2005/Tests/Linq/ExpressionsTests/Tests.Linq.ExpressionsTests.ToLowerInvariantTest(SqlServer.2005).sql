﻿BeforeExecute
-- SqlServer.2005

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

