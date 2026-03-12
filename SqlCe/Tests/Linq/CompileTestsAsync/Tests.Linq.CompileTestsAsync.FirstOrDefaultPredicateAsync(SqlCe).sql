-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (1)
	@p as [Id],
	[c_1].[Id] as [Id_1]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

