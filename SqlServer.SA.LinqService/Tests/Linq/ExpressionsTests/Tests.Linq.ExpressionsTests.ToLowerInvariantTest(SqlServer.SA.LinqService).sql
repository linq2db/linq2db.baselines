﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

