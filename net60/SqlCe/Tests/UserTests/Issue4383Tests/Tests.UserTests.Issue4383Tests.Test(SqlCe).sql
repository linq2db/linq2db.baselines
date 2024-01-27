BeforeExecute
-- SqlCe

DROP TABLE [PUMPLINES]

BeforeExecute
-- SqlCe

CREATE TABLE [PUMPLINES]
(
	[LINE_ID] Int NOT NULL,

	CONSTRAINT [PK_PUMPLINES] PRIMARY KEY ([LINE_ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlCe

DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlCe

CREATE TABLE [PUMPLINE_CHAINS]
(
	[LINE_ID]  Int NOT NULL,
	[CHAIN_ID] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
SELECT 1,11 UNION ALL
SELECT 2,22

BeforeExecute
-- SqlCe

DROP TABLE [CHAINS]

BeforeExecute
-- SqlCe

CREATE TABLE [CHAINS]
(
	[CHAIN_ID] Int NOT NULL,

	CONSTRAINT [PK_CHAINS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
SELECT 11 UNION ALL
SELECT 22

BeforeExecute
-- SqlCe

DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlCe

CREATE TABLE [CHAINPOINTS]
(
	[CHAIN_ID] Int NOT NULL,

	CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
SELECT 11 UNION ALL
SELECT 22

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

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
-- SqlCe

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
-- SqlCe

SELECT
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SqlCe

DROP TABLE [CHAINPOINTS]

BeforeExecute
-- SqlCe

DROP TABLE [CHAINS]

BeforeExecute
-- SqlCe

DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- SqlCe

DROP TABLE [PUMPLINES]

