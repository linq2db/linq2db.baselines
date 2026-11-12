-- Access.Jet.OleDb AccessOleDb
DECLARE @value Integer -- Int32
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
DECLARE @Column Integer -- Int32
SET     @Column = 0
DECLARE @ColumnNullable Integer -- Int32
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
DECLARE @value Integer -- Int32
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
DECLARE @Column Integer -- Int32
SET     @Column = 0
DECLARE @ColumnNullable Integer -- Int32
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
DECLARE @value Integer -- Int32
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
DECLARE @Column Integer -- Int32
SET     @Column = 0
DECLARE @ColumnNullable Integer -- Int32
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
DECLARE @value Integer -- Int32
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
DECLARE @Column Integer -- Int32
SET     @Column = 0
DECLARE @ColumnNullable Integer -- Int32
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
DECLARE @value Integer -- Int32
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
DECLARE @value Integer -- Int32
SET     @value = -2147483648
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = 2147483647

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
	[r].[Column] = -2147483648 AND [r].[ColumnNullable] = 2147483647

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Integer -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 2147483647

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
DECLARE @value Integer -- Int32
SET     @value = -2147483648
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = 2147483647

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
DECLARE @Column Integer -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 2147483647

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
DECLARE @value Integer -- Int32
SET     @value = -2147483648
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = 2147483647

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
DECLARE @Column Integer -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 2147483647

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
DECLARE @value Integer -- Int32
SET     @value = -2147483648
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = 2147483647

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
DECLARE @Column Integer -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 2147483647

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
DECLARE @value Integer -- Int32
SET     @value = -2147483648
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DECLARE @value Integer -- Int32
SET     @value = 2147483647
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = -2147483648

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
	[r].[Column] = 2147483647 AND [r].[ColumnNullable] = -2147483648

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Integer -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = -2147483648

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
DECLARE @value Integer -- Int32
SET     @value = 2147483647
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = -2147483648

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
DECLARE @Column Integer -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = -2147483648

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
DECLARE @value Integer -- Int32
SET     @value = 2147483647
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = -2147483648

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
DECLARE @Column Integer -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = -2147483648

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
DECLARE @value Integer -- Int32
SET     @value = 2147483647
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = -2147483648

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
DECLARE @Column Integer -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = -2147483648

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
DECLARE @value Integer -- Int32
SET     @value = 2147483647
DECLARE @nullableValue Integer -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

