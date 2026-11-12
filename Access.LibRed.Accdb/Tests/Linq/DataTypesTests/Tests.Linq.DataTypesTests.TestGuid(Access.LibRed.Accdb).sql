-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Column  -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = '{a948600d-de21-4f74-8ac2-9516b287076e}' AND
	[r].[ColumnNullable] = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[GuidTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable  -- Guid
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[GuidTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable  -- Guid
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[GuidTable] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable  -- Guid
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

