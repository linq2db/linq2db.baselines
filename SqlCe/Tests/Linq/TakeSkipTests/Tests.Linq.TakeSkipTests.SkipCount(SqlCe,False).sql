-- SqlCe

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID]
		OFFSET 2 ROWS
	) [t2]

