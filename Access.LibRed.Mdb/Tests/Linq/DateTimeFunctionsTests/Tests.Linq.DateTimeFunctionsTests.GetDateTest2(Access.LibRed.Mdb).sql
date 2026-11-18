-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 5

SELECT TOP @take
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			DateValue(Now) as [Key_1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON ([g_1].[ParentID] = [s].[ParentID])
		WHERE
			[g_1].[Value1] > 0
	) [g_2]
GROUP BY
	[g_2].[Key_1]

