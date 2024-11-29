BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue680Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue680Table]
(
	[TimeStamp] DateTime NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @DateTime Date -- DateTime
SET     @DateTime = #2020-02-29 17:54:55#

SELECT
	COUNT(IIF([g_1].[TimeStamp] > CVar(@DateTime), 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue680Table]

