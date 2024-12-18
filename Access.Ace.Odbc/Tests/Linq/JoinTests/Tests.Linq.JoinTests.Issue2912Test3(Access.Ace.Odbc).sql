﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF((
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[employee].[ParentID] = [a_Children].[ParentID]
	) IS NOT NULL, (
		SELECT TOP 1
			[a_Children_1].[ChildID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[employee].[ParentID] = [a_Children_1].[ParentID]
	), 0)
FROM
	[Parent] [employee]
		LEFT JOIN [GrandChild] [names_1] ON ([employee].[ParentID] = [names_1].[ParentID] AND [names_1].[ParentID] IS NOT NULL)

