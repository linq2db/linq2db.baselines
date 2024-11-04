BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SimpleBulkCopyTable]

