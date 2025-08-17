BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [t1_1]
			WHERE
				[t1].[ParentID] = [t1_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END as [c1]
FROM
	[Parent] [t1]

