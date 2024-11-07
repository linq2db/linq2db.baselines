BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3761Table]
		(
			[LETO]     Int      NOT NULL,
			[STEVILKA] Int      NOT NULL,
			[DATUM]    DateTime     NULL,
			[SKUPAJ]   Decimal      NULL,

			CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	MAX([r].[PersonID]),
	CAST('MAX' AS NVarChar(255)),
	NULL
FROM
	[Person] [r]
UNION ALL
SELECT
	NULL,
	NULL,
	[r_1].[PersonID]
FROM
	[Person] [r_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

