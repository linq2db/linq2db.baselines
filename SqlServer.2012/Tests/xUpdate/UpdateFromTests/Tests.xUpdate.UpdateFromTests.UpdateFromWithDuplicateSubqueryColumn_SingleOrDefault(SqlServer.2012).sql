-- SqlServer.2012
DECLARE @id1 Int -- Int32
SET     @id1 = 1

UPDATE
	[r_1]
SET
	[r_1].[Value1] = [r].[Value3],
	[r_1].[Value2] = [r].[Value3],
	[r_1].[Value3] = N'string 1',
	[r_1].[Value4] = N'string 1'
FROM
	[InsertFromWithConstantsTable] [r_1]
		LEFT JOIN [InsertFromWithConstantsTable] [r] ON [r].[Id] = @id1

