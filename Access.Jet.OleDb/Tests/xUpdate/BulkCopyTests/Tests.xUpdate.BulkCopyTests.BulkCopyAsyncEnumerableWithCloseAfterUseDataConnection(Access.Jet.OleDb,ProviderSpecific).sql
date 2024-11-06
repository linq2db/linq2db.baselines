BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

