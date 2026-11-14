-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(@Value1)
FROM
	[Parent] [p]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(@Value1)
FROM
	[Parent] [p]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

