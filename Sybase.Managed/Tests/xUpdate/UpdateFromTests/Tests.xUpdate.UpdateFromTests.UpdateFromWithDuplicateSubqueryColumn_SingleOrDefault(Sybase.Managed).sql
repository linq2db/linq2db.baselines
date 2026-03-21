-- Sybase.Managed Sybase
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

UPDATE
	[InsertFromWithConstantsTable]
SET
	[Value1] = (
		SELECT
			[r].[Value3]
		FROM
			[InsertFromWithConstantsTable] [r]
		WHERE
			[r].[Id] = @id1
	),
	[Value2] = (
		SELECT
			[r_1].[Value3]
		FROM
			[InsertFromWithConstantsTable] [r_1]
		WHERE
			[r_1].[Id] = @id1
	),
	[Value3] = 'string 1',
	[Value4] = 'string 1'

