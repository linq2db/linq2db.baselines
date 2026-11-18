-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id3  -- Int32
SET     @id3 = 3
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
	[r].[Value4] as [Value4_1],
	'string 1' as [c3],
	'string 2' as [c4]
FROM
	(
		SELECT
			1 as [c1]
	) [t1]
		LEFT JOIN [InsertFromWithConstantsTable] [r] ON ([r].[Id] = @id2)

