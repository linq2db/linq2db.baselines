BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [p].[Value1] IS NOT NULL THEN [p].[Value1]
		ELSE 0
	END as [Value_1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] > 0 AND [p].[Value1] IS NOT NULL

