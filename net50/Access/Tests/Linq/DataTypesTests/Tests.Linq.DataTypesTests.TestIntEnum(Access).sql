BeforeExecute
-- Access AccessOleDb

DROP TABLE [IntEnumTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [IntEnumTable]
(
	[ColumnNullable] Int     NULL,
	[Column]         Int NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
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
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [IntEnumTable]

