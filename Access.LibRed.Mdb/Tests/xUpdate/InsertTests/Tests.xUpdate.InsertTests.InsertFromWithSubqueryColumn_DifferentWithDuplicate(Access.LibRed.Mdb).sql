-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id3  -- Int32
SET     @id3 = 3
DECLARE @id4  -- Int32
SET     @id4 = 4
DECLARE @id2  -- Int32
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
SELECT
	@id1 as [c1],
	@id3 as [c2],
	[r].[Value4],
	(
		SELECT TOP 1
			[r_1].[Value3]
		FROM
			[InsertFromWithConstantsTable] [r_1]
		WHERE
			[r_1].[Id] = @id4
	) as [Value2],
	[r].[Value4] as [Value4_1],
	'string 2' as [c3]
FROM
	(
		SELECT
			1 as [c1]
	) [t1]
		LEFT JOIN [InsertFromWithConstantsTable] [r] ON ([r].[Id] = @id2)

