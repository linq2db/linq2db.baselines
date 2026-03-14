-- SqlServer.2014.MS SqlServer.2014
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id3 Int -- Int32
SET     @id3 = 3
DECLARE @id2 Int -- Int32
SET     @id2 = 2
DECLARE @id4 Int -- Int32
SET     @id4 = 4

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
		SELECT TOP (1)
			[r_1].[Value3]
		FROM
			[InsertFromWithConstantsTable] [r_1]
		WHERE
			[r_1].[Id] = @id4
	),
	N'string 1',
	N'string 2'
)

