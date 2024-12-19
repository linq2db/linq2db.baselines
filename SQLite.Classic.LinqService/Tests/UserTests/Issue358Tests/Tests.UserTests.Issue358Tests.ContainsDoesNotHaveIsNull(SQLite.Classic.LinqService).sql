BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestIssue358Class]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestIssue358Class]
(
	[MyEnum]  INTEGER     NULL,
	[MyEnum2] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum] IN (1)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestIssue358Class]

