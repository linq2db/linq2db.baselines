-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
	) [t1]

