BeforeExecute
-- Access AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [SimpleBulkCopyTable]

