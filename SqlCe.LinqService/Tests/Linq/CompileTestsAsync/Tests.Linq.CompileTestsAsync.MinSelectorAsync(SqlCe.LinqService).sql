BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MIN([c_1].[Id]) as [MIN_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

