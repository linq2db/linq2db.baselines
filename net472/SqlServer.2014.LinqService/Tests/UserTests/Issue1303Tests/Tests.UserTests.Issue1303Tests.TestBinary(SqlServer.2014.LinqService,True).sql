BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Array_1 VarBinary(10) -- Binary
SET     @Array_1 = 0x010203
DECLARE @Binary_1 VarBinary(2) -- Binary
SET     @Binary_1 = 0x0405

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = 0x010203

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = 0x0405

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [Issue1303]

