-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = '' AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarChar -- AnsiString
SET     @value = ''

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
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
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 'value' AND [r].[ColumnNullable] = 'other'

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
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
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
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
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
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
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Access.Ace.OleDb AccessOleDb
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
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

