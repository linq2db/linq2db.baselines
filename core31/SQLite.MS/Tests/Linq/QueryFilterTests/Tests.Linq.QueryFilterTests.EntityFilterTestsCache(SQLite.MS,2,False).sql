BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MasterClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MasterClass]
(
	[Id]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[IsDeleted] Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [MasterClass]
(
	[Id],
	[Value],
	[IsDeleted]
)
VALUES
(1,'MasterValue_1',0),
(2,'MasterValue_2',0),
(3,'MasterValue_3',1),
(4,'MasterValue_4',0),
(5,'MasterValue_5',0),
(6,'MasterValue_6',1),
(7,'MasterValue_7',0),
(8,'MasterValue_8',0),
(9,'MasterValue_9',1),
(10,'MasterValue_10',0)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Value],
	[e].[IsDeleted]
FROM
	[MasterClass] [e]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MasterClass]

