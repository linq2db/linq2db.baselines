BeforeExecute
-- SqlCe (asynchronously)

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
				*
			FROM
				[Child] [t2]
		)
			THEN 1
		ELSE 0
	END as [a],
	NULL as [b]
FROM
	[Parent] [x_1]

