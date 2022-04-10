BeforeExecute
-- Access AccessOleDb

DROP TABLE [GuidTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [GuidTable]
(
	[ColumnNullable] Guid     NULL,
	[Column]         Guid NOT NULL,
	[Id]             Int  NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [GuidTable]
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
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Column_1 Guid
SET     @Column_1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [GuidTable]
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
DECLARE @Column_1 Guid
SET     @Column_1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = '{a948600d-de21-4f74-8ac2-9516b287076e}' AND
	[r].[ColumnNullable] = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [GuidTable]
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
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Column_1 Guid
SET     @Column_1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [GuidTable]
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
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [GuidTable]
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
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Column_1 Guid
SET     @Column_1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [GuidTable]
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
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [GuidTable]
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
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Column_1 Guid
SET     @Column_1 = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [GuidTable]
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
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [GuidTable]

