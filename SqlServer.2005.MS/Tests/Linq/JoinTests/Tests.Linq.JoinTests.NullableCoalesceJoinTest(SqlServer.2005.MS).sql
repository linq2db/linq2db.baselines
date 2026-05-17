-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#tmptbl1]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#tmptbl1]
(
	[ID],
	[Value]
)
SELECT 1,N'Value1' UNION ALL
SELECT 2,NULL

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#tmptbl2]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000) NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#tmptbl2]
(
	[ID],
	[Value]
)
SELECT 1,N'Value1' UNION ALL
SELECT 3,N'Value2'

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#tmptbl3]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#tmptbl3]
(
	[ID],
	[Value]
)
SELECT 1,N'Value1' UNION ALL
SELECT 2,NULL

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t4].[ID],
	[t4].[Value]
FROM
	[tempdb]..[#tmptbl1] [t2]
		LEFT JOIN [tempdb]..[#tmptbl2] [t3] ON [t2].[ID] = [t3].[ID]
		LEFT JOIN [tempdb]..[#tmptbl3] [t4] ON Coalesce([t3].[Value], [t2].[Value]) = [t4].[Value] OR [t3].[Value] IS NULL AND [t2].[Value] IS NULL AND [t4].[Value] IS NULL

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl1] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl2] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl3] [t1]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#tmptbl3]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#tmptbl3]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#tmptbl2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#tmptbl2]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#tmptbl1]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#tmptbl1]

