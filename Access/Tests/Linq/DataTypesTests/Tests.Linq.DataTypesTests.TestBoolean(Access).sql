BeforeExecute
-- Access AccessOleDb

DROP TABLE [BooleanTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [BooleanTable]
(
	[Id]             Int NOT NULL,
	[Column]         Bit NOT NULL,
	[ColumnNullable] Bit     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = True
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = True
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = True
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = True
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = False
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
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

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [BooleanTable]

