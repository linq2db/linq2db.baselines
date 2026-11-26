-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 3
DECLARE @low Int -- Int32
SET     @low = 0

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	? BETWEEN ? AND [p].[ParentID]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 3
DECLARE @low Int -- Int32
SET     @low = 0

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	? NOT BETWEEN ? AND [p].[ParentID]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

