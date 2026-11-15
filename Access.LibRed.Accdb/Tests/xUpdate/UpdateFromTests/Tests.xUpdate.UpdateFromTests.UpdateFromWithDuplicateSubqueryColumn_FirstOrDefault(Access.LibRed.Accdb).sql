-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id1  -- Int32
SET     @id1 = 1

UPDATE
	[InsertFromWithConstantsTable] [r_1]
		LEFT JOIN (
			SELECT TOP 1
				[r].[Value3] as [Value1]
			FROM
				[InsertFromWithConstantsTable] [r]
			WHERE
				[r].[Id] = @id1
		) [t1] ON 1=1
SET
	[r_1].[Value1] = [t1].[Value1],
	[r_1].[Value2] = [t1].[Value1],
	[r_1].[Value3] = 'string 1',
	[r_1].[Value4] = 'string 1'

