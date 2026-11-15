-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT TOP @take
	[p].[Value1]
FROM
	[Parent] [p]
ORDER BY
	[p].[Value1] DESC

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

