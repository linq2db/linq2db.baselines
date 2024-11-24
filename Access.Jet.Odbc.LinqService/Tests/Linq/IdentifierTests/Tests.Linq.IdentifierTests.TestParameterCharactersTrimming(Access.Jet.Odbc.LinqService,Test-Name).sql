BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [testparams]
(
	[Test-Name] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Test-Name  -- Int32
SET     @Test-Name = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = ?
WHERE
	[t].[Test-Name] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [testparams]

