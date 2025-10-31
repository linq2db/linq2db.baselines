BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	COUNT(*) as [Count_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

