BeforeExecute
-- SqlCe (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MAX([c_1].[Id]) as [Max_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

