BeforeExecute
-- SqlCe
DECLARE @rand Int -- Int32
SET     @rand = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			[c_1].[ParentID],
			@rand as [RandValue]
		FROM
			[Child] [c_1]
	) [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[RandValue]

