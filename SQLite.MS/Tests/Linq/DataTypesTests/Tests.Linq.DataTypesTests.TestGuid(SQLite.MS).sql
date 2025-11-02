-- SQLite.MS SQLite
DECLARE @Column  -- Guid
SET     @Column = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = X'A57339BD2343D84D9F4FDF9F93E2A627'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = X'0D6048A921DE744F8AC29516B287076E' AND
	[r].[ColumnNullable] = X'A57339BD2343D84D9F4FDF9F93E2A627'

-- SQLite.MS SQLite

DELETE FROM
	[GuidTable]

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Guid
SET     @Column = X'3D667BBCDE0F27438F925D8CC3A11D11'
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Guid
SET     @Column = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = X'A57339BD2343D84D9F4FDF9F93E2A627'

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

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DELETE FROM
	[GuidTable]

-- SQLite.MS SQLite

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,X'3D667BBCDE0F27438F925D8CC3A11D11',NULL),
(2,X'0D6048A921DE744F8AC29516B287076E',X'A57339BD2343D84D9F4FDF9F93E2A627')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DELETE FROM
	[GuidTable]

-- SQLite.MS SQLite

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,X'3D667BBCDE0F27438F925D8CC3A11D11',NULL),
(2,X'0D6048A921DE744F8AC29516B287076E',X'A57339BD2343D84D9F4FDF9F93E2A627')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

