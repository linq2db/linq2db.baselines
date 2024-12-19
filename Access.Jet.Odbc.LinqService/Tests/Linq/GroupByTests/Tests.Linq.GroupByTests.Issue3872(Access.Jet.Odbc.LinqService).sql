BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3761Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue3761Table]
(
	[LETO]     Int      NOT NULL,
	[STEVILKA] Int      NOT NULL,
	[DATUM]    DateTime     NULL,
	[SKUPAJ]   Decimal      NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3761Table]

