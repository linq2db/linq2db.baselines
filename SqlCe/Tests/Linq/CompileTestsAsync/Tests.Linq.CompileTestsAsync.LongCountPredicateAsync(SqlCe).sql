-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

