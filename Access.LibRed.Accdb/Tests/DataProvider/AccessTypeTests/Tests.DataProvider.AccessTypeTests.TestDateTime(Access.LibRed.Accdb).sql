-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2012-12-12 12:12:12#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2000-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = #2012-12-12 12:12:12# AND [r].[ColumnNullable] = #2000-01-01#

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2012-12-12 12:12:12#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2000-01-01#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2012-12-12 12:12:12#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2000-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2012-12-12 12:12:12#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2000-01-01#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2012-12-12 12:12:12#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2000-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2012-12-12 12:12:12#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2000-01-01#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2012-12-12 12:12:12#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2000-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2012-12-12 12:12:12#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2000-01-01#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2012-12-12 12:12:12#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2000-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2000-01-01#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2012-12-12 12:12:12#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = #2000-01-01# AND [r].[ColumnNullable] = #2012-12-12 12:12:12#

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2000-01-01#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2012-12-12 12:12:12#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2000-01-01#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2012-12-12 12:12:12#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2000-01-01#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2012-12-12 12:12:12#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2000-01-01#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2012-12-12 12:12:12#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2000-01-01#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2012-12-12 12:12:12#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2000-01-01#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2012-12-12 12:12:12#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- DateTime
SET     @Column = #2000-01-01#
DECLARE @ColumnNullable  -- DateTime
SET     @ColumnNullable = #2012-12-12 12:12:12#

INSERT INTO [TypeTests]
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
DECLARE @value  -- DateTime
SET     @value = #2000-01-01#
DECLARE @nullableValue  -- DateTime
SET     @nullableValue = #2012-12-12 12:12:12#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

