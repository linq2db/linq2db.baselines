BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2815Table1]
(
	[SRC_BIC]       Int NOT NULL,
	[DES_BIC]       Int NOT NULL,
	[IDF]           Int NOT NULL,
	[TREA_CENT]     Int NOT NULL,
	[NOT_HANDLED]   Int NOT NULL,
	[TRANS_CHANNEL] Int     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table2]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2815Table2]
(
	[ISO]  Int NOT NULL,
	[SEPA] Bit NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table3]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2815Table3]
(
	[TreasuryCenter] Int NOT NULL,
	[BIC]            Int NOT NULL,
	[Sepa]           Int NOT NULL,
	[Trans_Channel]  Int NOT NULL,
	[Idf]            Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table3]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2815Table1]

