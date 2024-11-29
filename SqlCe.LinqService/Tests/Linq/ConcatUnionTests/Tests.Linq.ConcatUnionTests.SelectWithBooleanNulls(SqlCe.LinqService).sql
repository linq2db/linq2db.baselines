BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Child] [t1]
		)
			THEN 1
		ELSE 0
	END as [a],
	CASE
		WHEN [x].[ParentID] <> 0 THEN 1
		ELSE 0
	END as [b]
FROM
	[Parent] [x]
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Child] [t2]
		)
			THEN 1
		ELSE 0
	END as [a],
	NULL as [b]
FROM
	[Parent] [x_1]

