BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [ExpressionTestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @db NVarChar -- String
SET     @db = Tests.Model.TestDataConnection
DECLARE @p_1 NVarChar -- String
SET     @p_1 = Tests.Linq.ExpressionTests+ExpressionTestsFakeType

SELECT
	DATE(),
	DATE('now'),
	DATE('now')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ExpressionTestClass]

