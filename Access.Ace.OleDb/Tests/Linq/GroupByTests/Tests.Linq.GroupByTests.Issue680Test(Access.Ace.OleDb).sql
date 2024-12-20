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
DECLARE @value Date -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	COUNT(IIF([g_1].[TimeStamp] > @value, 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue680Table]

