﻿BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[key_data_result].[ParentID],
	[_gjd_c].[ParentID],
	[_gjd_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [_gjd_c] ON ([_gjd_c].[ParentID] - ? = [key_data_result].[ParentID])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

