-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	MIN([t2].[ParentID])
FROM
	(
		SELECT TOP @take
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

