BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (2)
	@p,
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

