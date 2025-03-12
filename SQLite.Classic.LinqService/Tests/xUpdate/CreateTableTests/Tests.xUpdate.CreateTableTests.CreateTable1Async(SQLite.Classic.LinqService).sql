BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE [TestTable]
(
	[ID]        INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DateTime2          NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE [TestTable]

