BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SomeTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SomeTable]

