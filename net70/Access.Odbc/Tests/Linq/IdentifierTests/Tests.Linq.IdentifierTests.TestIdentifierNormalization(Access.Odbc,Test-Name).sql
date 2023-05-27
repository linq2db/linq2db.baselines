BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test-Name]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Test-Name]
(
	[Test-Name] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Test-Name Int -- Int32
SET     @Test-Name = 2

UPDATE
	[Test-Name] [t]
SET
	[t].[Test-Name] = ?
WHERE
	[t].[Test-Name] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Test-Name]

