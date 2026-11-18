-- Access.Ace.Odbc AccessODBC
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
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 'ab' AND [r].[ColumnNullable] = 'cd'

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

