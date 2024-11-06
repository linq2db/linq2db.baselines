BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	True
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [SelectExpressionTable]

