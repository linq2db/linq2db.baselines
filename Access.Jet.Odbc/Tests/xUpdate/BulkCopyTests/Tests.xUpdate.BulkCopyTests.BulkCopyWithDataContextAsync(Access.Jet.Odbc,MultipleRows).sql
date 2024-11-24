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
-- Access.Jet.Odbc AccessODBC (asynchronously)
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
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 2

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

