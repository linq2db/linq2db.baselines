BeforeExecute
-- SqlCe (asynchronously)

SELECT
	CASE
		WHEN [p].[Value1] IS NOT NULL THEN [p].[Value1]
		ELSE 100
	END as [c1]
FROM
	[Parent] [p]

