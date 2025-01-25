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
	MAX([r].[PersonID]) as [c1]
FROM
	[Person] [r]
UNION ALL
SELECT
	[r_1].[PersonID] as [c1]
FROM
	[Person] [r_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3761Table]

