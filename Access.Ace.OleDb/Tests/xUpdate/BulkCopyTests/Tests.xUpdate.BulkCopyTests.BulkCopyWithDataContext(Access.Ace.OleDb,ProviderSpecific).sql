BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

