-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ByteFlag  -- Byte
SET     @ByteFlag = 1
DECLARE @Int16Flag  -- Int16
SET     @Int16Flag = 1
DECLARE @Int32Flag  -- Int32
SET     @Int32Flag = 1

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ByteFlag  -- Byte
SET     @ByteFlag = 0
DECLARE @Int16Flag  -- Int16
SET     @Int16Flag = 0
DECLARE @Int32Flag  -- Int32
SET     @Int32Flag = 0

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @flag  -- Byte
SET     @flag = 1

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[ByteFlag] = @flag

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @flag  -- Int16
SET     @flag = 1

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int16Flag] = @flag

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @flag  -- Int32
SET     @flag = 1

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int32Flag] = @flag

