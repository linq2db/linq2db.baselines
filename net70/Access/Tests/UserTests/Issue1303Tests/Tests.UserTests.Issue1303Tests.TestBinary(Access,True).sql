BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1303]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 2
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = 0x010203

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = 0x0405

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1303]

