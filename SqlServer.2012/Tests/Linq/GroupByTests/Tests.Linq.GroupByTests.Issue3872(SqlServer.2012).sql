BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NULL)
	CREATE TABLE [Issue3761Table]
	(
		[LETO]     Int       NOT NULL,
		[STEVILKA] Int       NOT NULL,
		[DATUM]    DateTime2     NULL,
		[SKUPAJ]   Decimal       NULL,

		CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
	)

BeforeExecute
-- SqlServer.2012

SELECT
	MAX([r].[PersonID])
FROM
	[Person] [r]
UNION ALL
SELECT
	[r_1].[PersonID]
FROM
	[Person] [r_1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue3761Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3761Table]

