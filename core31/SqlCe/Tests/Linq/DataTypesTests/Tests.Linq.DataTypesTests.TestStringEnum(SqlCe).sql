BeforeExecute
-- SqlCe

DROP TABLE [StringEnumTable]

BeforeExecute
-- SqlCe

CREATE TABLE [StringEnumTable]
(
	[ColumnNullable] NVarChar(8)     NULL,
	[Column]         NVarChar(8) NOT NULL,
	[Id]             Int         NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- SqlCe
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
-- SqlCe
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [StringEnumTable]

