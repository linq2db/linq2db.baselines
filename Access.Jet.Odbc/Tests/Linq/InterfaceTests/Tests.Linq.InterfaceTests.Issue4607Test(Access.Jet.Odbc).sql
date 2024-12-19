BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SomeTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	True,
	False
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SomeTable]

