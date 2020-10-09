BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 5

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
-- Access.Odbc AccessODBC
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 5

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
-- Access.Odbc AccessODBC

SELECT 
	[t1].[Not Identifier], 
	Count(*), 
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DynamicTable]

