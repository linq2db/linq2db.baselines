﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		WITH OWNERACCESS OPTION
	) [p_1]
WITH OWNERACCESS OPTION

