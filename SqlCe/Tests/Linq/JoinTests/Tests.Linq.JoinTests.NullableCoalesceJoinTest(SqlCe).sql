-- SqlCe

CREATE TABLE [tmptbl1]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl1] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [tmptbl1]
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 2,NULL

-- SqlCe

CREATE TABLE [tmptbl2]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_tmptbl2] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [tmptbl2]
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 3,'Value2'

-- SqlCe

CREATE TABLE [tmptbl3]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl3] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [tmptbl3]
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 2,NULL

-- SqlCe

SELECT
	[t4].[ID],
	[t4].[Value] as [Value_1]
FROM
	[tmptbl1] [t2]
		LEFT JOIN [tmptbl2] [t3] ON [t2].[ID] = [t3].[ID]
		LEFT JOIN [tmptbl3] [t4] ON Coalesce([t3].[Value], [t2].[Value]) = [t4].[Value] OR [t3].[Value] IS NULL AND [t2].[Value] IS NULL AND [t4].[Value] IS NULL

-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[tmptbl1] [t1]

-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[tmptbl2] [t1]

-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[tmptbl3] [t1]

-- SqlCe

DROP TABLE [tmptbl3]

-- SqlCe

DROP TABLE [tmptbl2]

-- SqlCe

DROP TABLE [tmptbl1]

