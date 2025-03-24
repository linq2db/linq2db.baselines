﻿BeforeExecute
--  SqlServer.2019

SELECT /* qb */
	[t].[PersonID],
	[t].[Diagnosis]
FROM
	[Parent] [t1] WITH (ReadUncommitted)
		CROSS JOIN [Child] [c_1] WITH (NoLock, NoWait, ReadUncommitted)
		INNER LOOP JOIN [Patient] [t] WITH (ReadUncommitted) ON [c_1].[ParentID] = [t].[PersonID]
OPTION (RECOMPILE, TABLE HINT(t1, ReadUncommitted), NO_PERFORMANCE_SPOOL)

