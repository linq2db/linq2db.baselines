BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem]', N'U') IS NOT NULL)
	DROP TABLE [MainItem]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem]', N'U') IS NULL)
	CREATE TABLE [MainItem]
	(
		[Id]    Int          NOT NULL,
		[Value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [MainItem]
(
	[Id],
	[Value]
)
SELECT 0,N'Main_0' UNION ALL
SELECT 1,N'Main_1' UNION ALL
SELECT 2,N'Main_2' UNION ALL
SELECT 3,N'Main_3' UNION ALL
SELECT 4,N'Main_4' UNION ALL
SELECT 5,N'Main_5' UNION ALL
SELECT 6,N'Main_6' UNION ALL
SELECT 7,N'Main_7' UNION ALL
SELECT 8,N'Main_8' UNION ALL
SELECT 9,N'Main_9'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem2]', N'U') IS NOT NULL)
	DROP TABLE [MainItem2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem2]', N'U') IS NULL)
	CREATE TABLE [MainItem2]
	(
		[Id]         Int          NOT NULL,
		[Value]      NVarChar(50)     NULL,
		[MainItemId] Int              NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [MainItem2]
(
	[Id],
	[Value],
	[MainItemId]
)
SELECT 0,N'Main2_0',0 UNION ALL
SELECT 2,N'Main2_1',1 UNION ALL
SELECT 4,N'Main2_2',2 UNION ALL
SELECT 6,N'Main2_3',3 UNION ALL
SELECT 8,N'Main2_4',4

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1]', N'U') IS NOT NULL)
	DROP TABLE [SubItem1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1]', N'U') IS NULL)
	CREATE TABLE [SubItem1]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SubItem1]
(
	[Id],
	[Value],
	[ParentId]
)
SELECT 0,N'Sub1_0',0 UNION ALL
SELECT 10,N'Sub1_1',NULL UNION ALL
SELECT 20,N'Sub1_2',1 UNION ALL
SELECT 30,N'Sub1_3',NULL UNION ALL
SELECT 40,N'Sub1_4',2 UNION ALL
SELECT 50,N'Sub1_5',NULL UNION ALL
SELECT 60,N'Sub1_6',3 UNION ALL
SELECT 70,N'Sub1_7',NULL UNION ALL
SELECT 80,N'Sub1_8',4 UNION ALL
SELECT 90,N'Sub1_9',NULL UNION ALL
SELECT 100,N'Sub1_10',5 UNION ALL
SELECT 110,N'Sub1_11',NULL UNION ALL
SELECT 120,N'Sub1_12',6 UNION ALL
SELECT 130,N'Sub1_13',NULL UNION ALL
SELECT 140,N'Sub1_14',7 UNION ALL
SELECT 150,N'Sub1_15',NULL UNION ALL
SELECT 160,N'Sub1_16',8 UNION ALL
SELECT 170,N'Sub1_17',NULL UNION ALL
SELECT 180,N'Sub1_18',9 UNION ALL
SELECT 190,N'Sub1_19',NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1_Sub]', N'U') IS NOT NULL)
	DROP TABLE [SubItem1_Sub]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1_Sub]', N'U') IS NULL)
	CREATE TABLE [SubItem1_Sub]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SubItem1_Sub]
(
	[Id],
	[Value],
	[ParentId]
)
SELECT 0,N'SubSub1_0',0 UNION ALL
SELECT 100,N'SubSub1_1',3 UNION ALL
SELECT 200,N'SubSub1_2',6 UNION ALL
SELECT 300,N'SubSub1_3',10 UNION ALL
SELECT 400,N'SubSub1_4',13 UNION ALL
SELECT 500,N'SubSub1_5',16 UNION ALL
SELECT 600,N'SubSub1_6',20 UNION ALL
SELECT 700,N'SubSub1_7',23 UNION ALL
SELECT 800,N'SubSub1_8',26 UNION ALL
SELECT 900,N'SubSub1_9',30 UNION ALL
SELECT 1000,N'SubSub1_10',33 UNION ALL
SELECT 1100,N'SubSub1_11',36 UNION ALL
SELECT 1200,N'SubSub1_12',40 UNION ALL
SELECT 1300,N'SubSub1_13',43 UNION ALL
SELECT 1400,N'SubSub1_14',46 UNION ALL
SELECT 1500,N'SubSub1_15',50 UNION ALL
SELECT 1600,N'SubSub1_16',53 UNION ALL
SELECT 1700,N'SubSub1_17',56 UNION ALL
SELECT 1800,N'SubSub1_18',60 UNION ALL
SELECT 1900,N'SubSub1_19',63

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem2]', N'U') IS NOT NULL)
	DROP TABLE [SubItem2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem2]', N'U') IS NULL)
	CREATE TABLE [SubItem2]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [SubItem2]
(
	[Id],
	[Value],
	[ParentId]
)
SELECT 0,N'Sub2_0',0 UNION ALL
SELECT 10,N'Sub2_1',NULL UNION ALL
SELECT 20,N'Sub2_2',1 UNION ALL
SELECT 30,N'Sub2_3',NULL UNION ALL
SELECT 40,N'Sub2_4',2 UNION ALL
SELECT 50,N'Sub2_5',NULL UNION ALL
SELECT 60,N'Sub2_6',3 UNION ALL
SELECT 70,N'Sub2_7',NULL UNION ALL
SELECT 80,N'Sub2_8',4 UNION ALL
SELECT 90,N'Sub2_9',NULL UNION ALL
SELECT 100,N'Sub2_10',5 UNION ALL
SELECT 110,N'Sub2_11',NULL UNION ALL
SELECT 120,N'Sub2_12',6 UNION ALL
SELECT 130,N'Sub2_13',NULL UNION ALL
SELECT 140,N'Sub2_14',7 UNION ALL
SELECT 150,N'Sub2_15',NULL UNION ALL
SELECT 160,N'Sub2_16',8 UNION ALL
SELECT 170,N'Sub2_17',NULL UNION ALL
SELECT 180,N'Sub2_18',9 UNION ALL
SELECT 190,N'Sub2_19',NULL

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id],
				[d].[Value] as [Value_1],
				[d].[ParentId]
			FROM
				[SubItem1] [d]
			WHERE
				[m_2].[Id] = [d].[ParentId] AND [d].[ParentId] % 2 = 0
			ORDER BY
				[d].[Id]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value_1],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[e].[Value] as [Value_1],
				[e].[Id],
				[e].[ParentId]
			FROM
				[SubItem1] [e]
			WHERE
				[m_2].[Id] = [e].[ParentId] AND [e].[ParentId] % 2 = 0
			ORDER BY
				[e].[Id]
		) [d]
WHERE
	[d].[Value_1] LIKE N'Sub1~_%' ESCAPE N'~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Parent],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [Parent],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		INNER JOIN [SubItem2] [d_1] ON [m_2].[Parent] = [d_1].[ParentId] OR [m_2].[Parent] IS NULL AND [d_1].[ParentId] IS NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Parent],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [Parent],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		INNER JOIN [SubItem2] [d_1] ON [m_2].[Parent] = [d_1].[ParentId] OR [m_2].[Parent] IS NULL AND [d_1].[ParentId] IS NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
WHERE
	[d].[ParentId] % 2 = 0 AND [d].[Value] LIKE N'Sub1~_%' ESCAPE N'~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem2]', N'U') IS NOT NULL)
	DROP TABLE [SubItem2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1_Sub]', N'U') IS NOT NULL)
	DROP TABLE [SubItem1_Sub]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SubItem1]', N'U') IS NOT NULL)
	DROP TABLE [SubItem1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem2]', N'U') IS NOT NULL)
	DROP TABLE [MainItem2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[MainItem]', N'U') IS NOT NULL)
	DROP TABLE [MainItem]

