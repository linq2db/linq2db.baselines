BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	MAX([c_1].[Id])
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

