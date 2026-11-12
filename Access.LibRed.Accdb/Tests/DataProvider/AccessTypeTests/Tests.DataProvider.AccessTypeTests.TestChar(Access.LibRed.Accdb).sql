-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value Char(2) -- AnsiStringFixedLength
SET     @value = 'ab'
DECLARE @nullableValue Char(2) -- AnsiStringFixedLength
SET     @nullableValue = 'cd'

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
	[r].[Column] = 'ab' AND [r].[ColumnNullable] = 'cd'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column Char(2) -- AnsiStringFixedLength
SET     @Column = 'ab'
DECLARE @ColumnNullable Char(2) -- AnsiStringFixedLength
SET     @ColumnNullable = 'cd'

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
DECLARE @value Char(2) -- AnsiStringFixedLength
SET     @value = 'ab'
DECLARE @nullableValue Char(2) -- AnsiStringFixedLength
SET     @nullableValue = 'cd'

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
DECLARE @Column Char(2) -- AnsiStringFixedLength
SET     @Column = 'ab'
DECLARE @ColumnNullable Char(2) -- AnsiStringFixedLength
SET     @ColumnNullable = 'cd'

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
DECLARE @value Char(2) -- AnsiStringFixedLength
SET     @value = 'ab'
DECLARE @nullableValue Char(2) -- AnsiStringFixedLength
SET     @nullableValue = 'cd'

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
DECLARE @Column Char(2) -- AnsiStringFixedLength
SET     @Column = 'ab'
DECLARE @ColumnNullable Char(2) -- AnsiStringFixedLength
SET     @ColumnNullable = 'cd'

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
DECLARE @value Char(2) -- AnsiStringFixedLength
SET     @value = 'ab'
DECLARE @nullableValue Char(2) -- AnsiStringFixedLength
SET     @nullableValue = 'cd'

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
DECLARE @Column Char(2) -- AnsiStringFixedLength
SET     @Column = 'ab'
DECLARE @ColumnNullable Char(2) -- AnsiStringFixedLength
SET     @ColumnNullable = 'cd'

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
DECLARE @value Char(2) -- AnsiStringFixedLength
SET     @value = 'ab'
DECLARE @nullableValue Char(2) -- AnsiStringFixedLength
SET     @nullableValue = 'cd'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

