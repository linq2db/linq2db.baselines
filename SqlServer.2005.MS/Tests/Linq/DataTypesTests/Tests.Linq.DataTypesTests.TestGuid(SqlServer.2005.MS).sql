-- SqlServer.2005.MS SqlServer.2005
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	[r].[ColumnNullable] = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[GuidTable] [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO [GuidTable]
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

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[GuidTable] [t1]

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL UNION ALL
SELECT 2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[GuidTable] [t1]

INSERT BULK [GuidTable](Id, Column, ColumnNullable)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

