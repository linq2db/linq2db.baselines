﻿BeforeExecute
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
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[CHAIN_ID] as [ElementId]
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
		INNER JOIN [CHAINPOINTS] [d_1] ON [m_1].[Id] = [d_1].[CHAIN_ID]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[LINE_ID] as [Id],
	[d].[LINE_ID] as [LineId],
	[d].[CHAIN_ID] as [ChainId],
	[a_Chain].[CHAIN_ID] as [cond],
	[a_Chain].[CHAIN_ID] as [Id_1]
FROM
	[PUMPLINES] [m_1]
		INNER JOIN [PUMPLINE_CHAINS] [d] ON [m_1].[LINE_ID] = [d].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
ORDER BY
	[m_1].[LINE_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[LINE_ID] as [Id],
	[t1].[LINE_ID] as [Id_1]
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

