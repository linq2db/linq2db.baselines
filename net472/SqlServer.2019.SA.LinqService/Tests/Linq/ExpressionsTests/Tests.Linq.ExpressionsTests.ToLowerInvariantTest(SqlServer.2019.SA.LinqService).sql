﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

