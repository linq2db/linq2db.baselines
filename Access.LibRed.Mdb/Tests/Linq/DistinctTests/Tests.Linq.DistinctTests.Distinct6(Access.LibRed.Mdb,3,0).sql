-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	CASE
		WHEN [p].[Value1] IS NULL THEN [p].[ParentID] + @ParentID
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

