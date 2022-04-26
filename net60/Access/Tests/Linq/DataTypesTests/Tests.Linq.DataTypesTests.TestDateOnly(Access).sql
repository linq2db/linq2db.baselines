BeforeExecute
-- Access AccessOleDb

DROP TABLE [DateOnlyTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DateOnlyTable]
(
	[ColumnNullable] Date     NULL,
	[Column]         Date NOT NULL,
	[Id]             Int  NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = #2200-01-01#

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = #2020-02-29# AND [r].[ColumnNullable] = #2200-01-01#

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable DBDate -- Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 DBDate -- Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DateOnlyTable]

