-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 1
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

