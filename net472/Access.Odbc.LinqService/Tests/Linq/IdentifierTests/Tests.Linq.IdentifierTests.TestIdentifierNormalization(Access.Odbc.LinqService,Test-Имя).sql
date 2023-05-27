BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test-Имя]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Test-Имя]
(
	[Test-Имя] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Test-Имя Int -- Int32
SET     @Test-Имя = 2

UPDATE
	[Test-Имя] [t]
SET
	[t].[Test-Имя] = ?
WHERE
	[t].[Test-Имя] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test-Имя]

