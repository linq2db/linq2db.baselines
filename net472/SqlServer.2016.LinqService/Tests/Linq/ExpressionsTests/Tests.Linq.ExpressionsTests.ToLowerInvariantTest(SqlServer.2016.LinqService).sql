﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

