﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3

SELECT
	CVar(?),
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= CVar(?)
UNION ALL
SELECT
	CVar(?),
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > CVar(?)

