﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

