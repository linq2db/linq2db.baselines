﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [MasterClass]
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

CREATE TABLE [DetailClass]
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
-- SQLite.MS SQLite
DECLARE @p1  -- Int32
SET     @p1 = 20

SELECT
	[key_data_result].[Master],
	[key_data_result].[Master_1],
	[key_data_result].[Master_2],
	[key_data_result].[Master_3],
	[detail].[DetailId],
	[detail].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[e].[Master],
			[e].[Master_1],
			[e].[Master_2],
			[e].[Master_3]
		FROM
			(
				SELECT
					[m_1].[Id1] as [Master],
					[m_1].[Id2] as [Master_1],
					[m_1].[Value] as [Master_2],
					[m_1].[ByteValues] as [Master_3]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
				LIMIT @p1
			) [e]
	) [key_data_result]
		INNER JOIN [DetailClass] [detail] ON [key_data_result].[Master] = [detail].[MasterId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[t1].[Master],
	[t1].[Master_1],
	[t1].[Master_2],
	[t1].[Master_3]
FROM
	(
		SELECT DISTINCT
			[e].[Master],
			[e].[Master_1],
			[e].[Master_2],
			[e].[Master_3]
		FROM
			(
				SELECT
					[m_1].[Id1] as [Master],
					[m_1].[Id2] as [Master_1],
					[m_1].[Value] as [Master_2],
					[m_1].[ByteValues] as [Master_3]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
				LIMIT @take
			) [e]
	) [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [DetailClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [MasterClass]

