BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PUMPLINES]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NULL)
	CREATE TABLE [PUMPLINES]
	(
		[LINE_ID] Int NOT NULL,

		CONSTRAINT [PK_PUMPLINES] PRIMARY KEY CLUSTERED ([LINE_ID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NULL)
	CREATE TABLE [PUMPLINE_CHAINS]
	(
		[LINE_ID]  Int NOT NULL,
		[CHAIN_ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NULL)
	CREATE TABLE [CHAINS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NULL)
	CREATE TABLE [CHAINPOINTS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[CHAIN_ID]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID] as [Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[LINE_ID] as [Id]
				FROM
					[PUMPLINES] [t1]
			) [t2]
				INNER JOIN [PUMPLINE_CHAINS] [d] ON [t2].[Id] = [d].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [m_1]
		INNER JOIN [CHAINPOINTS] [d_1] ON [m_1].[Id] = [d_1].[CHAIN_ID] AND [m_1].[Id] IS NOT NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[LINE_ID],
	[d].[LINE_ID],
	[d].[CHAIN_ID],
	[a_Chain].[CHAIN_ID],
	[a_Chain].[CHAIN_ID]
FROM
	[PUMPLINES] [m_1]
		INNER JOIN [PUMPLINE_CHAINS] [d] ON [m_1].[LINE_ID] = [d].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
ORDER BY
	[m_1].[LINE_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[LINE_ID],
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [PUMPLINES]

