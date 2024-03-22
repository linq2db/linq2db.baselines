﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NOT NULL)
	DROP TABLE [Issue1303]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NULL)
	CREATE TABLE [Issue1303]
	(
		[ID]     Int           NOT NULL,
		[Array]  VarBinary(10)     NULL,
		[Binary] VarBinary(10)     NULL,

		CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Array VarBinary(10) -- Binary
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
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Array VarBinary(10) -- Binary
SET     @Array = 0x010203

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = @Array

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = 0x0405

SELECT TOP (2)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = @Binary

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NOT NULL)
	DROP TABLE [Issue1303]

