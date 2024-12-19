BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1316Tests]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1316Tests]

