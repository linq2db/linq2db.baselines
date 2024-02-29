BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ExpressionTestClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ExpressionTestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @db NVarChar -- String
SET     @db = Tests.Model.TestDataConnection
DECLARE @p NVarChar -- String
SET     @p = Tests.Linq.ExpressionTests+ExpressionTestsFakeType

SELECT
	DATE(@db, @p)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p NVarChar -- String
SET     @p = Tests.Linq.ExpressionTests+ExpressionTestsFakeType

SELECT
	DATE(@p)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ExpressionTestClass]

