-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#tmptbl1]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [tempdb]..[#tmptbl1](ID, Value)

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#tmptbl2]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000) NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [tempdb]..[#tmptbl2](ID, Value)

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#tmptbl3]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [tempdb]..[#tmptbl3](ID, Value)

-- SqlServer.SA SqlServer.2019

SELECT
	[t4].[ID],
	[t4].[Value]
FROM
	[tempdb]..[#tmptbl1] [t2]
		LEFT JOIN [tempdb]..[#tmptbl2] [t3] ON [t2].[ID] = [t3].[ID]
		LEFT JOIN [tempdb]..[#tmptbl3] [t4] ON Coalesce([t3].[Value], [t2].[Value]) = [t4].[Value] OR [t3].[Value] IS NULL AND [t2].[Value] IS NULL AND [t4].[Value] IS NULL

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl1] [t1]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl2] [t1]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#tmptbl3] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmptbl3]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmptbl2]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmptbl1]

