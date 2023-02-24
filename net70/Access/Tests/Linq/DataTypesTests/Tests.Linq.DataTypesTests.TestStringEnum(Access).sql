BeforeExecute
-- Access AccessOleDb

DROP TABLE [StringEnumTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [StringEnumTable]
(
	[Id]             Int         NOT NULL,
	[Column]         NVarChar(8) NOT NULL,
	[ColumnNullable] NVarChar(8)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 VarWChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable VarWChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 VarWChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarWChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 VarWChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarWChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 VarWChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable VarWChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 VarWChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarWChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 VarWChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable VarWChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 VarWChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarWChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 VarWChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @ColumnNullable VarWChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 VarWChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarWChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [StringEnumTable]

