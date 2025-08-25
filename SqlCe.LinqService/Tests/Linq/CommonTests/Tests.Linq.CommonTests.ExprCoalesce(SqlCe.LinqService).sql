BeforeExecute
-- SqlCe (asynchronously)

SELECT
	Coalesce([p].[Value1], 100) + 50 as [c1]
FROM
	[Parent] [p]

