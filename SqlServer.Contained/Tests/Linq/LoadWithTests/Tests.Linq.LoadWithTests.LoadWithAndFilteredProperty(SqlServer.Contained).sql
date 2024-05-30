BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainItem]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[MainItem]', N'U') IS NULL)
	CREATE TABLE [MainItem]
	(
		[Id]    Int          NOT NULL,
		[Value] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [MainItem]
(
	[Id],
	[Value]
)
VALUES
(0,N'Main_0'),
(1,N'Main_1'),
(2,N'Main_2'),
(3,N'Main_3'),
(4,N'Main_4'),
(5,N'Main_5'),
(6,N'Main_6'),
(7,N'Main_7'),
(8,N'Main_8'),
(9,N'Main_9')

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainItem2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[MainItem2]', N'U') IS NULL)
	CREATE TABLE [MainItem2]
	(
		[Id]         Int          NOT NULL,
		[Value]      NVarChar(50)     NULL,
		[MainItemId] Int              NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [MainItem2]
(
	[Id],
	[Value],
	[MainItemId]
)
VALUES
(0,N'Main2_0',0),
(2,N'Main2_1',1),
(4,N'Main2_2',2),
(6,N'Main2_3',3),
(8,N'Main2_4',4)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubItem1]', N'U') IS NULL)
	CREATE TABLE [SubItem1]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SubItem1]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,N'Sub1_0',0),
(10,N'Sub1_1',NULL),
(20,N'Sub1_2',1),
(30,N'Sub1_3',NULL),
(40,N'Sub1_4',2),
(50,N'Sub1_5',NULL),
(60,N'Sub1_6',3),
(70,N'Sub1_7',NULL),
(80,N'Sub1_8',4),
(90,N'Sub1_9',NULL),
(100,N'Sub1_10',5),
(110,N'Sub1_11',NULL),
(120,N'Sub1_12',6),
(130,N'Sub1_13',NULL),
(140,N'Sub1_14',7),
(150,N'Sub1_15',NULL),
(160,N'Sub1_16',8),
(170,N'Sub1_17',NULL),
(180,N'Sub1_18',9),
(190,N'Sub1_19',NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem1_Sub]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubItem1_Sub]', N'U') IS NULL)
	CREATE TABLE [SubItem1_Sub]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SubItem1_Sub]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,N'SubSub1_0',0),
(100,N'SubSub1_1',3),
(200,N'SubSub1_2',6),
(300,N'SubSub1_3',10),
(400,N'SubSub1_4',13),
(500,N'SubSub1_5',16),
(600,N'SubSub1_6',20),
(700,N'SubSub1_7',23),
(800,N'SubSub1_8',26),
(900,N'SubSub1_9',30),
(1000,N'SubSub1_10',33),
(1100,N'SubSub1_11',36),
(1200,N'SubSub1_12',40),
(1300,N'SubSub1_13',43),
(1400,N'SubSub1_14',46),
(1500,N'SubSub1_15',50),
(1600,N'SubSub1_16',53),
(1700,N'SubSub1_17',56),
(1800,N'SubSub1_18',60),
(1900,N'SubSub1_19',63)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SubItem2]', N'U') IS NULL)
	CREATE TABLE [SubItem2]
	(
		[Id]       Int          NOT NULL,
		[Value]    NVarChar(50)     NULL,
		[ParentId] Int              NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [SubItem2]
(
	[Id],
	[Value],
	[ParentId]
)
VALUES
(0,N'Sub2_0',0),
(10,N'Sub2_1',NULL),
(20,N'Sub2_2',1),
(30,N'Sub2_3',NULL),
(40,N'Sub2_4',2),
(50,N'Sub2_5',NULL),
(60,N'Sub2_6',3),
(70,N'Sub2_7',NULL),
(80,N'Sub2_8',4),
(90,N'Sub2_9',NULL),
(100,N'Sub2_10',5),
(110,N'Sub2_11',NULL),
(120,N'Sub2_12',6),
(130,N'Sub2_13',NULL),
(140,N'Sub2_14',7),
(150,N'Sub2_15',NULL),
(160,N'Sub2_16',8),
(170,N'Sub2_17',NULL),
(180,N'Sub2_18',9),
(190,N'Sub2_19',NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_2].[Id],
	[m_2].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id],
			[t1].[Id] as [Id_1]
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
		INNER JOIN [SubItem2] [d_1] ON ([m_2].[Id] = [d_1].[ParentId] OR [m_2].[Id] IS NULL AND [d_1].[ParentId] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_2].[Id],
	[m_2].[Id_1],
	[d_1].[Id],
	[d_1].[Value],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id],
			[t1].[Id] as [Id_1]
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
		INNER JOIN [SubItem2] [d_1] ON ([m_2].[Id] = [d_1].[ParentId] OR [m_2].[Id] IS NULL AND [d_1].[ParentId] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem1_Sub]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SubItem1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainItem2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [MainItem]

