-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ByteFlag UnsignedTinyInt -- Byte
SET     @ByteFlag = True
DECLARE @Int16Flag SmallInt -- Int16
SET     @Int16Flag = True
DECLARE @Int32Flag Integer -- Int32
SET     @Int32Flag = True

INSERT INTO [BoolAsIntegerTable]
(
	[Id],
	[ByteFlag],
	[Int16Flag],
	[Int32Flag]
)
VALUES
(
	@Id,
	@ByteFlag,
	@Int16Flag,
	@Int32Flag
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ByteFlag UnsignedTinyInt -- Byte
SET     @ByteFlag = False
DECLARE @Int16Flag SmallInt -- Int16
SET     @Int16Flag = False
DECLARE @Int32Flag Integer -- Int32
SET     @Int32Flag = False

INSERT INTO [BoolAsIntegerTable]
(
	[Id],
	[ByteFlag],
	[Int16Flag],
	[Int32Flag]
)
VALUES
(
	@Id,
	@ByteFlag,
	@Int16Flag,
	@Int32Flag
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Jet.OleDb AccessOleDb
DECLARE @flag UnsignedTinyInt -- Byte
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[ByteFlag] = @flag

-- Access.Jet.OleDb AccessOleDb
DECLARE @flag SmallInt -- Int16
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int16Flag] = @flag

-- Access.Jet.OleDb AccessOleDb
DECLARE @flag Integer -- Int32
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int32Flag] = @flag

