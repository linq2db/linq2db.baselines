BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TestTable]
(
	[ID]      INTEGER       NOT NULL,
	[Field1]  INTEGER       NOT NULL,
	[Field2]  INTEGER       NOT NULL,
	[Field3]  INTEGER       NOT NULL,
	[Field4]  INTEGER       NOT NULL,
	[field11] NVarChar(255)     NULL,
	[Field5]  INTEGER       NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestTable]

