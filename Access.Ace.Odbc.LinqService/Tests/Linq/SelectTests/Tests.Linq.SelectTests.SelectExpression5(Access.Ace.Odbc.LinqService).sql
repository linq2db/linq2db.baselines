BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SelectExpressionTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
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
-- Access.Ace.Odbc AccessODBC
DECLARE @p Bit -- Boolean
SET     @p = True

SELECT TOP 1
	CVar(?)
FROM
	[SelectExpressionTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SelectExpressionTable]

