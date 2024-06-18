BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [q].[ParentID] IS NOT NULL THEN [q].[ParentID]
		ELSE 0
	END as [c1]
FROM
	[Parent] [q]

