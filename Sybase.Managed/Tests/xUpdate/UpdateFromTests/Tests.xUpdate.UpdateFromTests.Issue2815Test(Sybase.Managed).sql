BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table1') IS NOT NULL)
	DROP TABLE [Issue2815Table1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table1') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2815Table1]
		(
			[SRC_BIC]       Int NOT NULL,
			[DES_BIC]       Int NOT NULL,
			[IDF]           Int NOT NULL,
			[TREA_CENT]     Int NOT NULL,
			[NOT_HANDLED]   Int NOT NULL,
			[TRANS_CHANNEL] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table2') IS NOT NULL)
	DROP TABLE [Issue2815Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table2') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2815Table2]
		(
			[ISO]  Int NOT NULL,
			[SEPA] Bit NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table3') IS NOT NULL)
	DROP TABLE [Issue2815Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table3') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue2815Table3]
		(
			[TreasuryCenter] Int NOT NULL,
			[BIC]            Int NOT NULL,
			[Sepa]           Int NOT NULL,
			[Trans_Channel]  Int NOT NULL,
			[Idf]            Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table3') IS NOT NULL)
	DROP TABLE [Issue2815Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table2') IS NOT NULL)
	DROP TABLE [Issue2815Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue2815Table1') IS NOT NULL)
	DROP TABLE [Issue2815Table1]

