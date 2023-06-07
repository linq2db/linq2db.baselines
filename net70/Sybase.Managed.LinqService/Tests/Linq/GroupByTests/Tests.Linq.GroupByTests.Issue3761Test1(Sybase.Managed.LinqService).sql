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
DECLARE @default DateTime
SET     @default = '0001-01-01'
DECLARE @DATUM DateTime
SET     @DATUM = '2019-01-01'

SELECT
	[t1].[Key_1],
	[t1].[Key_2],
	Sum([t1].[SKUPAJ])
FROM
	(
		SELECT
			DatePart(year, Coalesce([n].[DATUM], @default)) as [Key_1],
			DatePart(month, Coalesce([n].[DATUM], @default)) as [Key_2],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			[n].[DATUM] < @DATUM
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3761Table') IS NOT NULL)
	DROP TABLE [Issue3761Table]

