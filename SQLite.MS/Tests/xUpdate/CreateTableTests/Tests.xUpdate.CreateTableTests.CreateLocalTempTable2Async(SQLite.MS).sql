-- SQLite.MS SQLite

DROP TABLE [TestTable]

-- SQLite.MS SQLite

CREATE TABLE [TestTable]
(
	[ID]        INTEGER       NOT NULL,
	[Field1]    NVarChar(50)      NULL,
	[Field2]    NVarChar(255)     NULL,
	[CreatedOn] DateTime2         NULL
)

-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

-- SQLite.MS SQLite

DROP TABLE [TestTable]

