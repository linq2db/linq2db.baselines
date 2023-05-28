BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[Test-Имя] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Test-Имя Int -- Int32
SET     @Test-Имя = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Имя] = ?
WHERE
	[t].[Test-Имя] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [testparams]

