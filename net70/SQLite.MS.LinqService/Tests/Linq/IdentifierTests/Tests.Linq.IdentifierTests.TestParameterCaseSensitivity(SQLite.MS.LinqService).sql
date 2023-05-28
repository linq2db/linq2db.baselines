BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [testparams]
(
	[col2]    INTEGER NOT NULL,
	[col3]    INTEGER NOT NULL,
	[Column1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @test  -- Int32
SET     @test = 0
DECLARE @TEST  -- Int32
SET     @TEST = 0
DECLARE @Component_Column1  -- Int32
SET     @Component_Column1 = 1

INSERT INTO [testparams]
(
	[col2],
	[col3],
	[Column1]
)
VALUES
(
	@test,
	@TEST,
	@Component_Column1
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @test  -- Int32
SET     @test = 2
DECLARE @TEST  -- Int32
SET     @TEST = 3

UPDATE
	[testparams]
SET
	[col2] = @test,
	[col3] = @TEST
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @TEST  -- Int32
SET     @TEST = 2
DECLARE @test  -- Int32
SET     @test = 3

UPDATE
	[testparams]
SET
	[col3] = @TEST,
	[col2] = @test
WHERE
	[testparams].[Column1] = 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [testparams]

