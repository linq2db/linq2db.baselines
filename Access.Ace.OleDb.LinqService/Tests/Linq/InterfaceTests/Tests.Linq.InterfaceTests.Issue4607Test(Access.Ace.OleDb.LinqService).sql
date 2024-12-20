BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SomeTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SomeTable]

