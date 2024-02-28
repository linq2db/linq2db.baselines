BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINES]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NULL)
	CREATE TABLE [PUMPLINES]
	(
		[LINE_ID] Int NOT NULL,

		CONSTRAINT [PK_PUMPLINES] PRIMARY KEY CLUSTERED ([LINE_ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NULL)
	CREATE TABLE [PUMPLINE_CHAINS]
	(
		[LINE_ID]  Int NOT NULL,
		[CHAIN_ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @LineId Int -- Int32
SET     @LineId = 1
DECLARE @ChainId Int -- Int32
SET     @ChainId = 11

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @LineId Int -- Int32
SET     @LineId = 2
DECLARE @ChainId Int -- Int32
SET     @ChainId = 22

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NULL)
	CREATE TABLE [CHAINS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 11

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 22

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NULL)
	CREATE TABLE [CHAINPOINTS]
	(
		[CHAIN_ID] Int NOT NULL,

		CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @ElementId Int -- Int32
SET     @ElementId = 11

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @ElementId Int -- Int32
SET     @ElementId = 22

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINPOINTS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINE_CHAINS]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[PUMPLINES]', N'U') IS NOT NULL)
	DROP TABLE [PUMPLINES]

