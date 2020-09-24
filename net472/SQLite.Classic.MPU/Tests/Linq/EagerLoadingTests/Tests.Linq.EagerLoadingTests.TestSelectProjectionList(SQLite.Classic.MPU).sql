﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [MasterClass]
(
	[Id1]        INTEGER       NOT NULL,
	[Id2]        INTEGER       NOT NULL,
	[Value]      NVarChar(255)     NULL,
	[ByteValues] VarBinary         NULL,

	CONSTRAINT [PK_MasterClass] PRIMARY KEY ([Id1], [Id2])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [DetailClass]
(
	[DetailId]    INTEGER       NOT NULL,
	[MasterId]    INTEGER           NULL,
	[DetailValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_DetailClass] PRIMARY KEY ([DetailId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id1  -- Int32
SET     @Id1 = 0

SELECT
	[m_1].[Id1],
	[_d].[DetailId],
	[_d].[MasterId],
	[_d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [_d] ON [_d].[MasterId] = [m_1].[Id1] AND [_d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] >= @Id1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id1  -- Int32
SET     @Id1 = 0

SELECT
	[key_data_result].[Id1],
	[_d].[DetailId],
	[_d].[MasterId],
	[_d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		WHERE
			[m_1].[Id1] >= @Id1
	) [key_data_result]
		INNER JOIN [DetailClass] [_d] ON [_d].[MasterId] = [key_data_result].[Id1] AND [_d].[MasterId] % 2 = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] >= @intParam

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [DetailClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [MasterClass]

