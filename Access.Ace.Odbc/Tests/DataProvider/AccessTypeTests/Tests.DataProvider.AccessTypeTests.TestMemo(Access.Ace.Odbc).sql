-- Access.Ace.Odbc AccessODBC
DECLARE @value NText(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NText(5) -- String
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
DECLARE @Column NText(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NText(5) -- String
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
DECLARE @value NText(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NText(5) -- String
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
DECLARE @Column NText(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NText(5) -- String
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
DECLARE @value NText(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NText(5) -- String
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
DECLARE @Column NText(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NText(5) -- String
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
DECLARE @value NText(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NText(5) -- String
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
DECLARE @Column NText(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NText(5) -- String
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
DECLARE @value NText(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NText(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

