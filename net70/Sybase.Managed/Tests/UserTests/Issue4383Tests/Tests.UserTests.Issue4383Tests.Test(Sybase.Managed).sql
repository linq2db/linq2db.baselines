BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NOT NULL)
	DROP TABLE [PUMPLINES]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NULL)
	EXECUTE('
		CREATE TABLE [PUMPLINES]
		(
			[LINE_ID] Int NOT NULL,

			CONSTRAINT [PK_PUMPLINES] PRIMARY KEY CLUSTERED ([LINE_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NULL)
	EXECUTE('
		CREATE TABLE [PUMPLINE_CHAINS]
		(
			[LINE_ID]  Int NOT NULL,
			[CHAIN_ID] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
SELECT 1,11 UNION ALL
SELECT 2,22

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NULL)
	EXECUTE('
		CREATE TABLE [CHAINS]
		(
			[CHAIN_ID] Int NOT NULL,

			CONSTRAINT [PK_CHAINS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
SELECT 11 UNION ALL
SELECT 22

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NULL)
	EXECUTE('
		CREATE TABLE [CHAINPOINTS]
		(
			[CHAIN_ID] Int NOT NULL,

			CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
SELECT 11 UNION ALL
SELECT 22

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NOT NULL)
	DROP TABLE [PUMPLINES]

