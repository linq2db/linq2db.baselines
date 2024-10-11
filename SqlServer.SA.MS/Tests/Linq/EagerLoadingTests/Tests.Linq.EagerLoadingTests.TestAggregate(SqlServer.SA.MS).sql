BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MasterClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[MasterClass]', N'U') IS NULL)
	CREATE TABLE [MasterClass]
	(
		[Id1]        Int            NOT NULL,
		[Id2]        Int            NOT NULL,
		[Value]      NVarChar(4000)     NULL,
		[ByteValues] VarBinary(Max)     NULL,

		CONSTRAINT [PK_MasterClass] PRIMARY KEY CLUSTERED ([Id1], [Id2])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(1,1,N'Str1',NULL),
(2,2,N'Str2',NULL),
(3,3,N'Str3',NULL),
(4,4,N'Str4',NULL),
(5,5,N'Str5',NULL),
(6,6,N'Str6',NULL),
(7,7,N'Str7',NULL),
(8,8,N'Str8',NULL),
(9,9,N'Str9',NULL),
(10,10,N'Str10',NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[DetailClass]', N'U') IS NULL)
	CREATE TABLE [DetailClass]
	(
		[DetailId]    Int            NOT NULL,
		[MasterId]    Int                NULL,
		[DetailValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_DetailClass] PRIMARY KEY CLUSTERED ([DetailId])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(1001,1,N'DetailValue10001'),
(3001,3,N'DetailValue30001'),
(3002,3,N'DetailValue30002'),
(3003,3,N'DetailValue30003'),
(5001,5,N'DetailValue50001'),
(5002,5,N'DetailValue50002'),
(5003,5,N'DetailValue50003'),
(5004,5,N'DetailValue50004'),
(5005,5,N'DetailValue50005'),
(7001,7,N'DetailValue70001'),
(7002,7,N'DetailValue70002'),
(7003,7,N'DetailValue70003'),
(7004,7,N'DetailValue70004'),
(7005,7,N'DetailValue70005'),
(7006,7,N'DetailValue70006'),
(7007,7,N'DetailValue70007'),
(9001,9,N'DetailValue90001'),
(9002,9,N'DetailValue90002'),
(9003,9,N'DetailValue90003'),
(9004,9,N'DetailValue90004'),
(9005,9,N'DetailValue90005'),
(9006,9,N'DetailValue90006'),
(9007,9,N'DetailValue90007'),
(9008,9,N'DetailValue90008'),
(9009,9,N'DetailValue90009')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t3].[SUM_1],
	[t6].[COUNT_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				SUM([t2].[Sum_1]) as [SUM_1]
			FROM
				(
					SELECT
						[t1].[Sum_1]
					FROM
						(
							SELECT DISTINCT
								[a_Details].[DetailId] as [Sum_1]
							FROM
								[DetailClass] [a_Details]
							WHERE
								[m_1].[Id1] = [a_Details].[MasterId]
						) [t1]
					ORDER BY
						[t1].[Sum_1]
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) [t2]
		) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								[a_Details_1].[DetailValue] as [Count_1]
							FROM
								[DetailClass] [a_Details_1]
							WHERE
								[m_1].[Id1] = [a_Details_1].[MasterId]
						) [t4]
					ORDER BY
						[t4].[Count_1]
					OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
				) [t5]
		) [t6]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MasterClass]

