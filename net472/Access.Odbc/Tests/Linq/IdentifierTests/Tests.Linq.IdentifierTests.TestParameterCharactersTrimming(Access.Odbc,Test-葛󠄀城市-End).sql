BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[Test-葛󠄀城市-End] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Test-葛󠄀城市-End Int -- Int32
SET     @Test-葛󠄀城市-End = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-葛󠄀城市-End] = ?
WHERE
	[t].[Test-葛󠄀城市-End] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

