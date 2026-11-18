-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	CASE
		WHEN [p].[Value1] IS NULL THEN [p].[ParentID] MOD 2
		ELSE [p].[Value1]
	END,
	CVar(@Value1)
FROM
	[Parent] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value1  -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	CASE
		WHEN [p].[Value1] IS NULL THEN [p].[ParentID] MOD 2
		ELSE [p].[Value1]
	END,
	CVar(@Value1)
FROM
	[Parent] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

