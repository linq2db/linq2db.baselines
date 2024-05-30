BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MasterClass') IS NOT NULL)
	DROP TABLE [MasterClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MasterClass') IS NULL)
	EXECUTE('
		CREATE TABLE [MasterClass]
		(
			[Id1]        Int           NOT NULL,
			[Id2]        Int           NOT NULL,
			[Value]      NVarChar(255)     NULL,
			[ByteValues] VarBinary         NULL,

			CONSTRAINT [PK_MasterClass] PRIMARY KEY CLUSTERED ([Id1], [Id2])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
SELECT 1,1,'Str1',NULL UNION ALL
SELECT 2,2,'Str2',NULL UNION ALL
SELECT 3,3,'Str3',NULL UNION ALL
SELECT 4,4,'Str4',NULL UNION ALL
SELECT 5,5,'Str5',NULL UNION ALL
SELECT 6,6,'Str6',NULL UNION ALL
SELECT 7,7,'Str7',NULL UNION ALL
SELECT 8,8,'Str8',NULL UNION ALL
SELECT 9,9,'Str9',NULL UNION ALL
SELECT 10,10,'Str10',NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DetailClass') IS NOT NULL)
	DROP TABLE [DetailClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DetailClass') IS NULL)
	EXECUTE('
		CREATE TABLE [DetailClass]
		(
			[DetailId]    Int           NOT NULL,
			[MasterId]    Int               NULL,
			[DetailValue] NVarChar(255)     NULL,

			CONSTRAINT [PK_DetailClass] PRIMARY KEY CLUSTERED ([DetailId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
SELECT 1001,1,'DetailValue10001' UNION ALL
SELECT 3001,3,'DetailValue30001' UNION ALL
SELECT 3002,3,'DetailValue30002' UNION ALL
SELECT 3003,3,'DetailValue30003' UNION ALL
SELECT 5001,5,'DetailValue50001' UNION ALL
SELECT 5002,5,'DetailValue50002' UNION ALL
SELECT 5003,5,'DetailValue50003' UNION ALL
SELECT 5004,5,'DetailValue50004' UNION ALL
SELECT 5005,5,'DetailValue50005' UNION ALL
SELECT 7001,7,'DetailValue70001' UNION ALL
SELECT 7002,7,'DetailValue70002' UNION ALL
SELECT 7003,7,'DetailValue70003' UNION ALL
SELECT 7004,7,'DetailValue70004' UNION ALL
SELECT 7005,7,'DetailValue70005' UNION ALL
SELECT 7006,7,'DetailValue70006' UNION ALL
SELECT 7007,7,'DetailValue70007' UNION ALL
SELECT 9001,9,'DetailValue90001' UNION ALL
SELECT 9002,9,'DetailValue90002' UNION ALL
SELECT 9003,9,'DetailValue90003' UNION ALL
SELECT 9004,9,'DetailValue90004' UNION ALL
SELECT 9005,9,'DetailValue90005' UNION ALL
SELECT 9006,9,'DetailValue90006' UNION ALL
SELECT 9007,9,'DetailValue90007' UNION ALL
SELECT 9008,9,'DetailValue90008' UNION ALL
SELECT 9009,9,'DetailValue90009'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_2].[Id1],
	[d_1].[DetailId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DetailId],
				[d].[MasterId]
			FROM
				[DetailClass] [d]
		) [d_1] ON [m_2].[Id1] = [d_1].[MasterId]
ORDER BY
	[d_1].[DetailId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_2].[Id1],
	[d_1].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DetailValue],
				[d].[MasterId]
			FROM
				[DetailClass] [d]
		) [d_1] ON [m_2].[Id1] = [d_1].[MasterId]
ORDER BY
	[d_1].[DetailValue]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id1]
FROM
	[MasterClass] [m_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DetailClass') IS NOT NULL)
	DROP TABLE [DetailClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MasterClass') IS NOT NULL)
	DROP TABLE [MasterClass]

