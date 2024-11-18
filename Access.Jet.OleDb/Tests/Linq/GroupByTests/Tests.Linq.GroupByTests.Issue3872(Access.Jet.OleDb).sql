BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3761Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3761Table]
(
	[LETO]     Int      NOT NULL,
	[STEVILKA] Int      NOT NULL,
	[DATUM]    DateTime     NULL,
	[SKUPAJ]   Decimal      NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	CStr('MAX'),
	MAX([r].[PersonID]),
	IIF(False, 0, NULL)
FROM
	[Person] [r]
UNION ALL
SELECT
	IIF(False, '', NULL),
	IIF(False, 0, NULL),
	[r_1].[PersonID]
FROM
	[Person] [r_1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3761Table]

