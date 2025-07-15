BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TestTable]
(
	[ID]        INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DateTime2          NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [TestTable]

