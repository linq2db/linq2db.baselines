-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

