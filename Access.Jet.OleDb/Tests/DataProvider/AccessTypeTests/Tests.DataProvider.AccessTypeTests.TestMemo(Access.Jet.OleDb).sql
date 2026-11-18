-- Access.Jet.OleDb AccessOleDb
DECLARE @value LongVarWChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue LongVarWChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 'value' AND [r].[ColumnNullable] = 'other'

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column LongVarWChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable LongVarWChar(5) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value LongVarWChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue LongVarWChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column LongVarWChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable LongVarWChar(5) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value LongVarWChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue LongVarWChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column LongVarWChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable LongVarWChar(5) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value LongVarWChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue LongVarWChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column LongVarWChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable LongVarWChar(5) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value LongVarWChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue LongVarWChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

