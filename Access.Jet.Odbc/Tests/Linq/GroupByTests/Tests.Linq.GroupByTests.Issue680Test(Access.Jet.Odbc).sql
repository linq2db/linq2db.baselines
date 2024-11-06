BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue680Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue680Table]
(
	[TimeStamp] DateTime NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @DateTime  -- DateTime
SET     @DateTime = #2020-02-29 17:54:55#

SELECT
	COUNT(IIF([g_1].[TimeStamp] > CVar(?), 1, NULL))
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue680Table]

