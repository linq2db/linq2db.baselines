BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AttributeBase]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [AttributeBase]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AttributeBase]

