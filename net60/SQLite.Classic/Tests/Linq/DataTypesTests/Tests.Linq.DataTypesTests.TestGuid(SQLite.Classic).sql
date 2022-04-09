BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [GuidTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [GuidTable]
(
	[ColumnNullable] Guid        NULL,
	[Column]         Guid    NOT NULL,
	[Id]             INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [GuidTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,X'3D667BBCDE0F27438F925D8CC3A11D11',1),
(X'A57339BD2343D84D9F4FDF9F93E2A627',X'0D6048A921DE744F8AC29516B287076E',2)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Column_1  -- Guid
SET     @Column_1 = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = X'A57339BD2343D84D9F4FDF9F93E2A627'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = X'0D6048A921DE744F8AC29516B287076E' AND
	[r].[ColumnNullable] = X'A57339BD2343D84D9F4FDF9F93E2A627'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[GuidTable]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Guid
SET     @Column_1 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id  -- Int32
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
-- SQLite.Classic SQLite
DECLARE @ColumnNullable  -- Guid
SET     @ColumnNullable = X'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @Column_1  -- Guid
SET     @Column_1 = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @Id  -- Int32
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
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[GuidTable]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [GuidTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,X'3D667BBCDE0F27438F925D8CC3A11D11',1),
(X'A57339BD2343D84D9F4FDF9F93E2A627',X'0D6048A921DE744F8AC29516B287076E',2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[GuidTable]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [GuidTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,X'3D667BBCDE0F27438F925D8CC3A11D11',1),
(X'A57339BD2343D84D9F4FDF9F93E2A627',X'0D6048A921DE744F8AC29516B287076E',2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [GuidTable]

