-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[ByteTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[ByteTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[ByteTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

