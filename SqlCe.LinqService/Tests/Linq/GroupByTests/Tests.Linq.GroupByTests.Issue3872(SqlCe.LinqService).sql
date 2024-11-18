BeforeExecute
-- SqlCe

DROP TABLE [Issue3761Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3761Table]
(
	[LETO]     Int      NOT NULL,
	[STEVILKA] Int      NOT NULL,
	[DATUM]    DateTime     NULL,
	[SKUPAJ]   Decimal      NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY ([LETO], [STEVILKA])
)

BeforeExecute
-- SqlCe

SELECT
	CAST('MAX' AS NVarChar(255)) as [c1],
	MAX([r].[PersonID]) as [c2],
	NULL as [c3]
FROM
	[Person] [r]
UNION ALL
SELECT
	NULL as [c1],
	NULL as [c2],
	[r_1].[PersonID] as [c3]
FROM
	[Person] [r_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3761Table]

