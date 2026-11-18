-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 5

SELECT TOP @take
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

