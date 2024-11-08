BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3761Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue3761Table]
(
	[LETO]     Int      NOT NULL,
	[STEVILKA] Int      NOT NULL,
	[DATUM]    DateTime     NULL,
	[SKUPAJ]   Decimal      NULL,

	CONSTRAINT [PK_Issue3761Table] PRIMARY KEY CLUSTERED ([LETO], [STEVILKA])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	MAX([r].[PersonID]),
	CStr('MAX'),
	IIF(False, 0, NULL)
FROM
	[Person] [r]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	IIF(False, '', NULL),
	[r_1].[PersonID]
FROM
	[Person] [r_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3761Table]

