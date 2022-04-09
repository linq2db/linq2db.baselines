﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = N'psychiatry'

