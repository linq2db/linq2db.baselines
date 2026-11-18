-- Access.Jet.OleDb AccessOleDb
DECLARE @value Guid
SET     @value = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {00000000-0000-0000-0000-000000000001}}

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
	[r].[Column] = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}} AND
	[r].[ColumnNullable] = {guid {00000000-0000-0000-0000-000000000001}}

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @value Guid
SET     @value = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @Column Guid
SET     @Column = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @value Guid
SET     @value = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @Column Guid
SET     @Column = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @value Guid
SET     @value = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @Column Guid
SET     @Column = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {00000000-0000-0000-0000-000000000001}}

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
DECLARE @value Guid
SET     @value = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {00000000-0000-0000-0000-000000000001}}

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.Jet.OleDb AccessOleDb
DECLARE @value Guid
SET     @value = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
	[r].[Column] = {guid {00000000-0000-0000-0000-000000000001}} AND
	[r].[ColumnNullable] = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

-- Access.Jet.OleDb AccessOleDb
DELETE FROM
	[TypeTests] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @value Guid
SET     @value = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @Column Guid
SET     @Column = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @value Guid
SET     @value = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @Column Guid
SET     @Column = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @value Guid
SET     @value = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @Column Guid
SET     @Column = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

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
DECLARE @value Guid
SET     @value = {guid {00000000-0000-0000-0000-000000000001}}
DECLARE @nullableValue Guid
SET     @nullableValue = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

