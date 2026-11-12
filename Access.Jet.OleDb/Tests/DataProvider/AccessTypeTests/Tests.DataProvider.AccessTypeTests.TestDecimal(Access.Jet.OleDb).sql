-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(1, 0) -- AnsiString
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(1, 0) -- AnsiString
SET     @Column = 0
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(1, 0) -- AnsiString
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(1, 0) -- AnsiString
SET     @Column = 0
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(1, 0) -- AnsiString
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(1, 0) -- AnsiString
SET     @Column = 0
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(1, 0) -- AnsiString
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(1, 0) -- AnsiString
SET     @Column = 0
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(1, 0) -- AnsiString
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Jet.OleDb AccessOleDb
DECLARE @value VarChar(5, 4) -- AnsiString
SET     @value = 1.2345
DECLARE @nullableValue VarChar(5, 4) -- AnsiString
SET     @nullableValue = -1.2345

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
	[r].[Column] = 1.2345 AND [r].[ColumnNullable] = -1.2345

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column VarChar(5, 4) -- AnsiString
SET     @Column = 1.2345
DECLARE @ColumnNullable VarChar(5, 4) -- AnsiString
SET     @ColumnNullable = -1.2345

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
DECLARE @value VarChar(5, 4) -- AnsiString
SET     @value = 1.2345
DECLARE @nullableValue VarChar(5, 4) -- AnsiString
SET     @nullableValue = -1.2345

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
DECLARE @Column VarChar(5, 4) -- AnsiString
SET     @Column = 1.2345
DECLARE @ColumnNullable VarChar(5, 4) -- AnsiString
SET     @ColumnNullable = -1.2345

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
DECLARE @value VarChar(5, 4) -- AnsiString
SET     @value = 1.2345
DECLARE @nullableValue VarChar(5, 4) -- AnsiString
SET     @nullableValue = -1.2345

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
DECLARE @Column VarChar(5, 4) -- AnsiString
SET     @Column = 1.2345
DECLARE @ColumnNullable VarChar(5, 4) -- AnsiString
SET     @ColumnNullable = -1.2345

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
DECLARE @value VarChar(5, 4) -- AnsiString
SET     @value = 1.2345
DECLARE @nullableValue VarChar(5, 4) -- AnsiString
SET     @nullableValue = -1.2345

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
DECLARE @Column VarChar(5, 4) -- AnsiString
SET     @Column = 1.2345
DECLARE @ColumnNullable VarChar(5, 4) -- AnsiString
SET     @ColumnNullable = -1.2345

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
DECLARE @value VarChar(5, 4) -- AnsiString
SET     @value = 1.2345
DECLARE @nullableValue VarChar(5, 4) -- AnsiString
SET     @nullableValue = -1.2345

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

