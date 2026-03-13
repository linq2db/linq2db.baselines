-- SqlServer.2014
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id3 Int -- Int32
SET     @id3 = 3
DECLARE @id2 Int -- Int32
SET     @id2 = 2

INSERT INTO [InsertFromWithConstantsTable]
(
	[Id],
	[Value],
	[Value1],
	[Value2],
	[Value3],
	[Value4]
)
VALUES
(
	@id1,
	@id3,
	(
		SELECT
			[r].[Value4]
		FROM
			[InsertFromWithConstantsTable] [r]
		WHERE
			[r].[Id] = @id2
	),
	(
		SELECT
			[r].[Value4]
		FROM
			[InsertFromWithConstantsTable] [r]
		WHERE
			[r].[Id] = @id2
	),
	N'string 1',
	N'string 2'
)

