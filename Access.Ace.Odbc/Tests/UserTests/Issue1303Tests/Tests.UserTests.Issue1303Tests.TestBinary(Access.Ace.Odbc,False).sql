BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1303]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Array Binary(3)
SET     @Array = 0x010203
DECLARE @Binary Binary(2)
SET     @Binary = 0x0405

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Array Binary(3)
SET     @Array = 0x010203

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Binary Binary(2)
SET     @Binary = 0x0405

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1303]

