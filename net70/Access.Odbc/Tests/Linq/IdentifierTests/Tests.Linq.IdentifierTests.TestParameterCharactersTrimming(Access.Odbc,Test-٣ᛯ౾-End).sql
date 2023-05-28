BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[Test-٣ᛯ౾-End] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Test-٣ᛯ౾-End Int -- Int32
SET     @Test-٣ᛯ౾-End = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-٣ᛯ౾-End] = ?
WHERE
	[t].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

