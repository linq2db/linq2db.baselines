-- Sybase.Managed Sybase

CREATE TABLE #tmptbl1
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

-- Sybase.Managed Sybase

INSERT INTO #tmptbl1
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 2,NULL

-- Sybase.Managed Sybase

CREATE TABLE #tmptbl2
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255) NOT NULL
)

-- Sybase.Managed Sybase

INSERT INTO #tmptbl2
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 3,'Value2'

-- Sybase.Managed Sybase

CREATE TABLE #tmptbl3
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL
)

-- Sybase.Managed Sybase

INSERT INTO #tmptbl3
(
	[ID],
	[Value]
)
SELECT 1,'Value1' UNION ALL
SELECT 2,NULL

-- Sybase.Managed Sybase

SELECT
	[t4].[ID],
	[t4].[Value]
FROM
	#tmptbl1 [t2]
		LEFT JOIN #tmptbl2 [t3] ON [t2].[ID] = [t3].[ID]
		LEFT JOIN #tmptbl3 [t4] ON Coalesce([t3].[Value], [t2].[Value]) = [t4].[Value] OR [t3].[Value] IS NULL AND [t2].[Value] IS NULL AND [t4].[Value] IS NULL

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#tmptbl1 [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#tmptbl2 [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#tmptbl3 [t1]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#tmptbl3') IS NOT NULL)
	DROP TABLE #tmptbl3

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#tmptbl2') IS NOT NULL)
	DROP TABLE #tmptbl2

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#tmptbl1') IS NOT NULL)
	DROP TABLE #tmptbl1

