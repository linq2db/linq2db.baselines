-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[x].[X]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				1 as [X]
			UNION ALL
			SELECT
				2 as [X]
		) [x] ON 1=1

