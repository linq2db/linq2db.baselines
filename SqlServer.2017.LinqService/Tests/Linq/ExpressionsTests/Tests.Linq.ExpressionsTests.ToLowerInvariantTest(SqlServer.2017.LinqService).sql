﻿BeforeExecute
-- SqlServer.2017

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

