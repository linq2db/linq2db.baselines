-- Access.Ace.OleDb AccessOleDb
DECLARE @value Double
SET     @value = 0

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
	[r].[Column] = 0 AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Double
SET     @Column = 0
DECLARE @ColumnNullable Double
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
DECLARE @value Double
SET     @value = 0

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
DECLARE @Column Double
SET     @Column = 0
DECLARE @ColumnNullable Double
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
DECLARE @value Double
SET     @value = 0

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
DECLARE @Column Double
SET     @Column = 0
DECLARE @ColumnNullable Double
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
DECLARE @value Double
SET     @value = 0

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
DECLARE @Column Double
SET     @Column = 0
DECLARE @ColumnNullable Double
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
DECLARE @value Double
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Double
SET     @value = 1.25
DECLARE @nullableValue Double
SET     @nullableValue = -1.25

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
	[r].[Column] = 1.25 AND [r].[ColumnNullable] = -1.25

-- Access.Ace.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Double
SET     @Column = 1.25
DECLARE @ColumnNullable Double
SET     @ColumnNullable = -1.25

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
DECLARE @value Double
SET     @value = 1.25
DECLARE @nullableValue Double
SET     @nullableValue = -1.25

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
DECLARE @Column Double
SET     @Column = 1.25
DECLARE @ColumnNullable Double
SET     @ColumnNullable = -1.25

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
DECLARE @value Double
SET     @value = 1.25
DECLARE @nullableValue Double
SET     @nullableValue = -1.25

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
DECLARE @Column Double
SET     @Column = 1.25
DECLARE @ColumnNullable Double
SET     @ColumnNullable = -1.25

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
DECLARE @value Double
SET     @value = 1.25
DECLARE @nullableValue Double
SET     @nullableValue = -1.25

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
DECLARE @Column Double
SET     @Column = 1.25
DECLARE @ColumnNullable Double
SET     @ColumnNullable = -1.25

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
DECLARE @value Double
SET     @value = 1.25
DECLARE @nullableValue Double
SET     @nullableValue = -1.25

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

