﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT /* qb */
	[t].[PersonID],
	[t].[Diagnosis]
FROM
	[Parent] [t1],
	[Child] [c_1] NOT INDEXED
		INNER JOIN [Patient] [t] ON [c_1].[ParentID] = [t].[PersonID]

