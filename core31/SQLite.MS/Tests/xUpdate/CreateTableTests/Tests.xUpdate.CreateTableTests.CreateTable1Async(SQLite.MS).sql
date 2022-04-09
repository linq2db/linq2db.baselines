﻿BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TABLE [TestTable]
(
	[Field1]    NVarChar(50)       NULL,
	[ID]        INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DateTime2          NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Field1],
	[t1].[ID],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE [TestTable]

