﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1316Tests]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5

SELECT TOP 2
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1316Tests]

