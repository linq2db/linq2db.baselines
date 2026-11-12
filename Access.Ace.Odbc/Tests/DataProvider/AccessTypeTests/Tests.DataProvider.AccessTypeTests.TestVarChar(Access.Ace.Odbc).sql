-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = '' AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column VarChar -- AnsiString
SET     @Column = ''
DECLARE @ColumnNullable VarChar -- AnsiString
SET     @ColumnNullable = NULL

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
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column VarChar -- AnsiString
SET     @Column = ''
DECLARE @ColumnNullable VarChar -- AnsiString
SET     @ColumnNullable = NULL

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
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column VarChar -- AnsiString
SET     @Column = ''
DECLARE @ColumnNullable VarChar -- AnsiString
SET     @ColumnNullable = NULL

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
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column VarChar -- AnsiString
SET     @Column = ''
DECLARE @ColumnNullable VarChar -- AnsiString
SET     @ColumnNullable = NULL

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
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] IS NULL

-- Access.Ace.Odbc AccessODBC
DECLARE @value VarChar(5) -- AnsiString
SET     @value = 'value'
DECLARE @nullableValue VarChar(5) -- AnsiString
SET     @nullableValue = 'other'

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
	[r].[Column] = 'value' AND [r].[ColumnNullable] = 'other'

-- Access.Ace.Odbc AccessODBC
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column VarChar(5) -- AnsiString
SET     @Column = 'value'
DECLARE @ColumnNullable VarChar(5) -- AnsiString
SET     @ColumnNullable = 'other'

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
DECLARE @value VarChar(5) -- AnsiString
SET     @value = 'value'
DECLARE @nullableValue VarChar(5) -- AnsiString
SET     @nullableValue = 'other'

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
DECLARE @Column VarChar(5) -- AnsiString
SET     @Column = 'value'
DECLARE @ColumnNullable VarChar(5) -- AnsiString
SET     @ColumnNullable = 'other'

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
DECLARE @value VarChar(5) -- AnsiString
SET     @value = 'value'
DECLARE @nullableValue VarChar(5) -- AnsiString
SET     @nullableValue = 'other'

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
DECLARE @Column VarChar(5) -- AnsiString
SET     @Column = 'value'
DECLARE @ColumnNullable VarChar(5) -- AnsiString
SET     @ColumnNullable = 'other'

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
DECLARE @value VarChar(5) -- AnsiString
SET     @value = 'value'
DECLARE @nullableValue VarChar(5) -- AnsiString
SET     @nullableValue = 'other'

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
DECLARE @Column VarChar(5) -- AnsiString
SET     @Column = 'value'
DECLARE @ColumnNullable VarChar(5) -- AnsiString
SET     @ColumnNullable = 'other'

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
DECLARE @value VarChar(5) -- AnsiString
SET     @value = 'value'
DECLARE @nullableValue VarChar(5) -- AnsiString
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

