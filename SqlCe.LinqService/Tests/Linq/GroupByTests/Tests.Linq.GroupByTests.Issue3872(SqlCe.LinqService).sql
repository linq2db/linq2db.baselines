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
	Max([selectParam].[PersonID])
FROM
	[Person] [selectParam]
UNION ALL
SELECT
	[r].[PersonID]
FROM
	[Person] [r]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3761Table]

