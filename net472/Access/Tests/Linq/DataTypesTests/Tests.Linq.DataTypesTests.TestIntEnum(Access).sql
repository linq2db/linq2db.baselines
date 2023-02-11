BeforeExecute
-- Access AccessOleDb

DROP TABLE [IntEnumTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [IntEnumTable]
(
	[Id]             Int NOT NULL,
	[Column]         Int NOT NULL,
	[ColumnNullable] Int     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [IntEnumTable]

