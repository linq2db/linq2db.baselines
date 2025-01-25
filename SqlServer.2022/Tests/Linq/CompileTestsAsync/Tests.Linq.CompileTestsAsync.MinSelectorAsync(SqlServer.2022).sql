BeforeExecute
-- SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MIN([c_1].[Id])
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

