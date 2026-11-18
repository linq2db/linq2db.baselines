-- Access.Ace.OleDb AccessOleDb
DECLARE @value VarWChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue VarWChar(6) -- String
SET     @nullableValue = 'другое'

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
	[r].[Column] = 'значение' AND [r].[ColumnNullable] = 'другое'

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarWChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable VarWChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value VarWChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue VarWChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column VarWChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable VarWChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value VarWChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue VarWChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column VarWChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable VarWChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value VarWChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue VarWChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column VarWChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable VarWChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value VarWChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue VarWChar(6) -- String
SET     @nullableValue = 'другое'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

