﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @p  -- Int32
SET     @p = 2
DECLARE @p  -- Int32
SET     @p = 3
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (?, ?, ?) OR [o].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	([o].[ParentID] IN (1, 2, 3) OR [o].[ParentID] IS NULL) OR
	[o].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 4
DECLARE @p  -- Int32
SET     @p = 5
DECLARE @p  -- Int32
SET     @p = 6
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	[o].[ParentID] IN (?, ?, ?) OR [o].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Parent] [o]
WHERE
	([o].[ParentID] IN (4, 5, 6) OR [o].[ParentID] IS NULL) OR
	[o].[ParentID] = ?

