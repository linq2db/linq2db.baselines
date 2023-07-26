BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SimpleBulkCopyTable]

