BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [MasterManyId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MasterManyId]
(
	[Id1]   INTEGER       NOT NULL,
	[Id2]   INTEGER       NOT NULL,
	[Id3]   INTEGER       NOT NULL,
	[Id4]   INTEGER       NOT NULL,
	[Id5]   INTEGER       NOT NULL,
	[Id6]   INTEGER       NOT NULL,
	[Id7]   INTEGER       NOT NULL,
	[Id8]   INTEGER       NOT NULL,
	[Id9]   INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [MasterManyId]
(
	[Id1],
	[Id2],
	[Id3],
	[Id4],
	[Id5],
	[Id6],
	[Id7],
	[Id8],
	[Id9],
	[Value]
)
VALUES
(1,3,4,5,6,7,8,9,10,'Str1'),
(2,4,5,6,7,8,9,10,11,'Str2'),
(3,5,6,7,8,9,10,11,12,'Str3'),
(4,6,7,8,9,10,11,12,13,'Str4'),
(5,7,8,9,10,11,12,13,14,'Str5'),
(6,8,9,10,11,12,13,14,15,'Str6'),
(7,9,10,11,12,13,14,15,16,'Str7'),
(8,10,11,12,13,14,15,16,17,'Str8'),
(9,11,12,13,14,15,16,17,18,'Str9'),
(10,12,13,14,15,16,17,18,19,'Str10')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DetailClass]
(
	[DetailId]    INTEGER       NOT NULL,
	[MasterId]    INTEGER           NULL,
	[DetailValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_DetailClass] PRIMARY KEY ([DetailId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(1001,1,'DetailValue10001'),
(2001,2,'DetailValue20001'),
(2002,2,'DetailValue20002'),
(3001,3,'DetailValue30001'),
(3002,3,'DetailValue30002'),
(3003,3,'DetailValue30003'),
(4001,4,'DetailValue40001'),
(4002,4,'DetailValue40002'),
(4003,4,'DetailValue40003'),
(4004,4,'DetailValue40004'),
(5001,5,'DetailValue50001'),
(5002,5,'DetailValue50002'),
(5003,5,'DetailValue50003'),
(5004,5,'DetailValue50004'),
(5005,5,'DetailValue50005'),
(6001,6,'DetailValue60001'),
(6002,6,'DetailValue60002'),
(6003,6,'DetailValue60003'),
(6004,6,'DetailValue60004'),
(6005,6,'DetailValue60005'),
(6006,6,'DetailValue60006'),
(7001,7,'DetailValue70001'),
(7002,7,'DetailValue70002'),
(7003,7,'DetailValue70003'),
(7004,7,'DetailValue70004'),
(7005,7,'DetailValue70005'),
(7006,7,'DetailValue70006'),
(7007,7,'DetailValue70007'),
(8001,8,'DetailValue80001'),
(8002,8,'DetailValue80002'),
(8003,8,'DetailValue80003'),
(8004,8,'DetailValue80004'),
(8005,8,'DetailValue80005'),
(8006,8,'DetailValue80006'),
(8007,8,'DetailValue80007'),
(8008,8,'DetailValue80008'),
(9001,9,'DetailValue90001'),
(9002,9,'DetailValue90002'),
(9003,9,'DetailValue90003'),
(9004,9,'DetailValue90004'),
(9005,9,'DetailValue90005'),
(9006,9,'DetailValue90006'),
(9007,9,'DetailValue90007'),
(9008,9,'DetailValue90008'),
(9009,9,'DetailValue90009'),
(10001,10,'DetailValue100001'),
(10002,10,'DetailValue100002'),
(10003,10,'DetailValue100003'),
(10004,10,'DetailValue100004'),
(10005,10,'DetailValue100005'),
(10006,10,'DetailValue100006'),
(10007,10,'DetailValue100007'),
(10008,10,'DetailValue100008'),
(10009,10,'DetailValue100009'),
(10010,10,'DetailValue1000010')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1]
		FROM
			[MasterManyId] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1]
		FROM
			[MasterManyId] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] > [m_1].[Id1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*),
	[g_1].[Id1]
FROM
	[MasterManyId] [g_1]
GROUP BY
	[g_1].[Id1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [MasterManyId]

