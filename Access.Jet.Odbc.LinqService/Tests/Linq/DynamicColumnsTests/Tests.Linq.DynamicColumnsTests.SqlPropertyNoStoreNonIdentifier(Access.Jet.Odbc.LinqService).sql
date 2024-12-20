BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [DynamicTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [DynamicTable]

