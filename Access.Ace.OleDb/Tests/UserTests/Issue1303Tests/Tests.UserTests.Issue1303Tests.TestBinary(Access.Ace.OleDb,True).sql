BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1303]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = 0x010203
DECLARE @Binary VarBinary(2) -- Binary
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
	@Array,
	@Binary
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = 0x010203

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = 0x0405

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1303]

