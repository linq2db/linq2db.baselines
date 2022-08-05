﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Array_1 VarBinary(10) -- Binary
SET     @Array_1 = 0x010203

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = @Array_1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Binary_1 VarBinary(2) -- Binary
SET     @Binary_1 = 0x0405

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = @Binary_1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1303]

