BeforeExecute
-- Access AccessOleDb

DROP TABLE [BooleanTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [BooleanTable]
(
	[ColumnNullable] Bit     NULL,
	[Column]         Bit NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Boolean
SET     @Column_1 = True
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Boolean
SET     @Column_1 = False
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
DECLARE @Column_1 Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = False AND [r].[ColumnNullable] = True

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Boolean
SET     @Column_1 = True
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Boolean
SET     @Column_1 = False
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Boolean
SET     @Column_1 = True
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Boolean
SET     @Column_1 = False
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Boolean
SET     @Column_1 = True
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Boolean
SET     @Column_1 = False
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [BooleanTable]

