BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NOT NULL)
	DROP TABLE [Issue1303]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NULL)
	CREATE TABLE [Issue1303]
	(
		[ID]     Int           NOT NULL,
		[Array]  VarBinary(10)     NULL,
		[Binary] VarBinary(10)     NULL,

		CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	0x010203,
	0x0405
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = 0x010203

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = 0x0405

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1303]', N'U') IS NOT NULL)
	DROP TABLE [Issue1303]

