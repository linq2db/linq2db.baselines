﻿BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SelectExpressionTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT TOP 1 
	1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SelectExpressionTable]

