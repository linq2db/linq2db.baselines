﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Lower([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	Lower([p].[Taxonomy]) = 'psychiatry'

