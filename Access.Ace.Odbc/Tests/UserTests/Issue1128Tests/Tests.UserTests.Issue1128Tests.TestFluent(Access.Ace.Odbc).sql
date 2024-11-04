BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AttributeBase]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [AttributeBase]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [AttributeBase]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [AttributeBase]

