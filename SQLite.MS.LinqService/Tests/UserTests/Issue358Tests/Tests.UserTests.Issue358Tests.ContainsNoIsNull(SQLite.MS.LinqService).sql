BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestIssue358Class]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestIssue358Class]
(
	[MyEnum]  INTEGER     NULL,
	[MyEnum2] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestIssue358Class]

