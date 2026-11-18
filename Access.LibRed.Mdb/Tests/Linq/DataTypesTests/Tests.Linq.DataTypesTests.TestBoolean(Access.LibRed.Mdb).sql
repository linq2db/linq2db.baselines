-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = False AND [r].[ColumnNullable] = True

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[BooleanTable] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[BooleanTable] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[BooleanTable] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

