BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainTable]
(
	[Id]    INTEGER       NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AssociatedTable]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
FROM
	[MainTable] [t1]
		LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON [t1].[Id] = [a_AssociatedOptional].[Id]
WHERE
	[t1].[Id] = @id AND [a_AssociatedOptional].[Id] = [MainTable].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainTable]

