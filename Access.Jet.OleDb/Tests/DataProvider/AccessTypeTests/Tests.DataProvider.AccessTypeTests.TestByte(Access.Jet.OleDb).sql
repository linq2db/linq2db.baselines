-- Access.Jet.OleDb AccessOleDb
DECLARE @value UnsignedTinyInt(1) -- Byte
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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
DECLARE @value UnsignedTinyInt(1) -- Byte
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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
DECLARE @value UnsignedTinyInt(1) -- Byte
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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
DECLARE @value UnsignedTinyInt(1) -- Byte
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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
DECLARE @value UnsignedTinyInt(1) -- Byte
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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 0
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 255

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
	[r].[Column] = 0 AND [r].[ColumnNullable] = 255

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 255

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 0
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 255

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 255

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 0
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 255

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 255

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 0
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 255

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 0
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 255

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 0
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 255

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 255
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 0

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
	[r].[Column] = 255 AND [r].[ColumnNullable] = 0

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 0

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 255
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 0

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 0

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 255
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 0

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 0

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 255
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 0

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
DECLARE @Column UnsignedTinyInt(1) -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
SET     @ColumnNullable = 0

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
DECLARE @value UnsignedTinyInt(1) -- Byte
SET     @value = 255
DECLARE @nullableValue UnsignedTinyInt(1) -- Byte
SET     @nullableValue = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

