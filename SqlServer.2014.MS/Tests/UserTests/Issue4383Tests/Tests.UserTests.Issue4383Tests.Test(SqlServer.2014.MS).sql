BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINES]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NULL)
	CREATE TABLE [PUMPLINES]
	(
		[LINE_ID] Int NOT NULL,

		CONSTRAINT [PK_PUMPLINES] PRIMARY KEY CLUSTERED ([LINE_ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NULL)
	CREATE TABLE [PUMPLINE_CHAINS]
	(
		[LINE_ID]  Int NOT NULL,
		[CHAIN_ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NULL)
	CREATE TABLE [CHAINS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NULL)
	CREATE TABLE [CHAINPOINTS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[key_data_result].[CHAIN_ID],
	[key_data_result].[LINE_ID],
	[detail_1].[CHAIN_ID]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID],
			[lw_PumpLineTest`2].[LINE_ID]
		FROM
			[PUMPLINES] [lw_PumpLineTest`2]
				INNER JOIN [PUMPLINE_CHAINS] [detail] ON [lw_PumpLineTest`2].[LINE_ID] = [detail].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [detail].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [key_data_result]
		INNER JOIN [CHAINPOINTS] [detail_1] ON [key_data_result].[CHAIN_ID] = [detail_1].[CHAIN_ID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[lw_PumpLineTest`2].[LINE_ID],
	[detail].[LINE_ID],
	[detail].[CHAIN_ID],
	[a_Chain].[CHAIN_ID]
FROM
	[PUMPLINES] [lw_PumpLineTest`2]
		INNER JOIN [PUMPLINE_CHAINS] [detail] ON [lw_PumpLineTest`2].[LINE_ID] = [detail].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [detail].[CHAIN_ID] = [a_Chain].[CHAIN_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINES]

