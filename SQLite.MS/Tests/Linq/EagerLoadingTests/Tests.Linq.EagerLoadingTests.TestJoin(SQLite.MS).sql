﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MasterClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MasterClass]
(
	[Id1]        INTEGER       NOT NULL,
	[Id2]        INTEGER       NOT NULL,
	[Value]      NVarChar(255)     NULL,
	[ByteValues] VarBinary         NULL,

	CONSTRAINT [PK_MasterClass] PRIMARY KEY ([Id1], [Id2])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(1,1,'Str1',NULL),
(2,2,'Str2',NULL),
(3,3,'Str3',NULL),
(4,4,'Str4',NULL),
(5,5,'Str5',NULL),
(6,6,'Str6',NULL),
(7,7,'Str7',NULL),
(8,8,'Str8',NULL),
(9,9,'Str9',NULL),
(10,10,'Str10',NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DetailClass]
(
	[DetailId]    INTEGER       NOT NULL,
	[MasterId]    INTEGER           NULL,
	[DetailValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_DetailClass] PRIMARY KEY ([DetailId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(1001,1,'DetailValue10001'),
(3001,3,'DetailValue30001'),
(3002,3,'DetailValue30002'),
(3003,3,'DetailValue30003'),
(5001,5,'DetailValue50001'),
(5002,5,'DetailValue50002'),
(5003,5,'DetailValue50003'),
(5004,5,'DetailValue50004'),
(5005,5,'DetailValue50005'),
(7001,7,'DetailValue70001'),
(7002,7,'DetailValue70002'),
(7003,7,'DetailValue70003'),
(7004,7,'DetailValue70004'),
(7005,7,'DetailValue70005'),
(7006,7,'DetailValue70006'),
(7007,7,'DetailValue70007'),
(9001,9,'DetailValue90001'),
(9002,9,'DetailValue90002'),
(9003,9,'DetailValue90003'),
(9004,9,'DetailValue90004'),
(9005,9,'DetailValue90005'),
(9006,9,'DetailValue90006'),
(9007,9,'DetailValue90007'),
(9008,9,'DetailValue90008'),
(9009,9,'DetailValue90009')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[cond],
	[d_1].[Id1],
	[d_1].[Id2],
	[d_1].[Value],
	[d_1].[ByteValues]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [t1].[Id1] = [d].[MasterId] THEN 1
				ELSE 0
			END as [cond]
		FROM
			(
				SELECT
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				LIMIT @take
			) [t1]
				INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
	) [m_2]
		INNER JOIN [MasterClass] [d_1] ON [m_2].[cond]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue],
	CASE
		WHEN [m_2].[Id1] = [d].[MasterId] THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		LIMIT @take
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MasterClass]

