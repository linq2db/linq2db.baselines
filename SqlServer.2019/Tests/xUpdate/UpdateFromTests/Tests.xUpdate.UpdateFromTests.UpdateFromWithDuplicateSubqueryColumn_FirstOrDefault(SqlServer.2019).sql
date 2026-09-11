-- SqlServer.2019
DECLARE @id1 Int -- Int32
SET     @id1 = 1

UPDATE
	[r_1]
SET
	[r_1].[Value1] = [t1].[Value1],
	[r_1].[Value2] = [t1].[Value1],
	[r_1].[Value3] = N'string 1',
	[r_1].[Value4] = N'string 1'
FROM
	[InsertFromWithConstantsTable] [r_1]
		LEFT JOIN (
			SELECT TOP (1)
				[r].[Value3] as [Value1]
			FROM
				[InsertFromWithConstantsTable] [r]
			WHERE
				[r].[Id] = @id1
		) [t1] ON 1=1

