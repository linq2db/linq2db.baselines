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
DECLARE @p_1 NVarChar -- String
SET     @p_1 = Tests.Linq.ExpressionTests+ExpressionTestsFakeType

SELECT
	DATE(@db, @p_1)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1 NVarChar -- String
SET     @p_1 = Tests.Linq.ExpressionTests+ExpressionTestsFakeType

SELECT
	DATE(@p_1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ExpressionTestClass]

