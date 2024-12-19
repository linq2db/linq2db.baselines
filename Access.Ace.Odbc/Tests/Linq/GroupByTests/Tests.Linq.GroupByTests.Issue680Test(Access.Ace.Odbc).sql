BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue680Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue680Table]
(
	[TimeStamp] DateTime NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	COUNT(IIF([g_1].[TimeStamp] > ?, 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue680Table]

