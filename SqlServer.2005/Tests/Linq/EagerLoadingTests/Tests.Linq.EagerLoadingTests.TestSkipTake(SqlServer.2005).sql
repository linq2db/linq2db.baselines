﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MasterClass]', N'U') IS NOT NULL)
	DROP TABLE [MasterClass]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
SELECT 1,1,N'Str1',NULL UNION ALL
SELECT 2,2,N'Str2',NULL UNION ALL
SELECT 3,3,N'Str3',NULL UNION ALL
SELECT 4,4,N'Str4',NULL UNION ALL
SELECT 5,5,N'Str5',NULL UNION ALL
SELECT 6,6,N'Str6',NULL UNION ALL
SELECT 7,7,N'Str7',NULL UNION ALL
SELECT 8,8,N'Str8',NULL UNION ALL
SELECT 9,9,N'Str9',NULL UNION ALL
SELECT 10,10,N'Str10',NULL

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DetailClass]', N'U') IS NOT NULL)
	DROP TABLE [DetailClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DetailClass]', N'U') IS NULL)
	CREATE TABLE [DetailClass]
	(
		[DetailId]    Int            NOT NULL,
		[MasterId]    Int                NULL,
		[DetailValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_DetailClass] PRIMARY KEY CLUSTERED ([DetailId])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
SELECT 1001,1,N'DetailValue10001' UNION ALL
SELECT 3001,3,N'DetailValue30001' UNION ALL
SELECT 3002,3,N'DetailValue30002' UNION ALL
SELECT 3003,3,N'DetailValue30003' UNION ALL
SELECT 5001,5,N'DetailValue50001' UNION ALL
SELECT 5002,5,N'DetailValue50002' UNION ALL
SELECT 5003,5,N'DetailValue50003' UNION ALL
SELECT 5004,5,N'DetailValue50004' UNION ALL
SELECT 5005,5,N'DetailValue50005' UNION ALL
SELECT 7001,7,N'DetailValue70001' UNION ALL
SELECT 7002,7,N'DetailValue70002' UNION ALL
SELECT 7003,7,N'DetailValue70003' UNION ALL
SELECT 7004,7,N'DetailValue70004' UNION ALL
SELECT 7005,7,N'DetailValue70005' UNION ALL
SELECT 7006,7,N'DetailValue70006' UNION ALL
SELECT 7007,7,N'DetailValue70007' UNION ALL
SELECT 9001,9,N'DetailValue90001' UNION ALL
SELECT 9002,9,N'DetailValue90002' UNION ALL
SELECT 9003,9,N'DetailValue90003' UNION ALL
SELECT 9004,9,N'DetailValue90004' UNION ALL
SELECT 9005,9,N'DetailValue90005' UNION ALL
SELECT 9006,9,N'DetailValue90006' UNION ALL
SELECT 9007,9,N'DetailValue90007' UNION ALL
SELECT 9008,9,N'DetailValue90008' UNION ALL
SELECT 9009,9,N'DetailValue90009'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

BeforeExecute
-- SqlServer.2005

SELECT
	[m_2].[Id1],
	[d_1].[DetailId],
	[d_1].[MasterId],
	[d_1].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		CROSS APPLY (
			SELECT
				[t1].[DetailId],
				[t1].[MasterId],
				[t1].[DetailValue]
			FROM
				(
					SELECT
						[d].[DetailId],
						[d].[MasterId],
						[d].[DetailValue],
						ROW_NUMBER() OVER (ORDER BY [d].[DetailId]) as [RN]
					FROM
						[DetailClass] [d]
					WHERE
						[m_2].[Id1] = [d].[MasterId]
				) [t1]
			WHERE
				[t1].[RN] > 1 AND [t1].[RN] <= 3
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[m_1].[Value],
	[m_1].[ByteValues]
FROM
	[MasterClass] [m_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DetailClass]', N'U') IS NOT NULL)
	DROP TABLE [DetailClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[MasterClass]', N'U') IS NOT NULL)
	DROP TABLE [MasterClass]

