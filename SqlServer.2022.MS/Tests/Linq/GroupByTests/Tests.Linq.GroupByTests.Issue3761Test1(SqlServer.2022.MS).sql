BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue3761Table]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @default DateTime2
SET     @default = DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)
DECLARE @DATUM DateTime2
SET     @DATUM = DATETIME2FROMPARTS(2019, 1, 1, 0, 0, 0, 0, 7)

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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue3761Table]

