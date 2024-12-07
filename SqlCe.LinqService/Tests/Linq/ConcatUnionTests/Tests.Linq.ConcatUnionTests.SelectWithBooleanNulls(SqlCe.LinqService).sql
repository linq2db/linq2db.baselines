BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [t1]
		)
			THEN 1
		ELSE 0
	END as [c1],
	CASE
		WHEN [x].[ParentID] <> 0 THEN 1
		ELSE 0
	END as [c2]
FROM
	[Parent] [x]
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [t2]
		)
			THEN 1
		ELSE 0
	END as [c1],
	NULL as [c2]
FROM
	[Parent] [x_1]

