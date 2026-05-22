-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_db68f3134d18]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_db68f3134d18]
(
	[Id],
	[Data]
)
SELECT 0,N'Data 0' UNION ALL
SELECT 1,N'Data 1' UNION ALL
SELECT 2,N'Data 2' UNION ALL
SELECT 3,N'Data 3' UNION ALL
SELECT 4,N'Data 4' UNION ALL
SELECT 5,N'Data 5' UNION ALL
SELECT 6,N'Data 6' UNION ALL
SELECT 7,N'Data 7' UNION ALL
SELECT 8,N'Data 8' UNION ALL
SELECT 9,N'Data 9'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_db68f3134d18] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_db68f3134d18]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_db68f3134d18]

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_db68f3134d18]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_db68f3134d18]
(
	[Id],
	[Data]
)
SELECT 0,N'Data 0' UNION ALL
SELECT 1,N'Data 1' UNION ALL
SELECT 2,N'Data 2' UNION ALL
SELECT 3,N'Data 3' UNION ALL
SELECT 4,N'Data 4' UNION ALL
SELECT 5,N'Data 5' UNION ALL
SELECT 6,N'Data 6' UNION ALL
SELECT 7,N'Data 7' UNION ALL
SELECT 8,N'Data 8' UNION ALL
SELECT 9,N'Data 9' UNION ALL
SELECT 100,N'Data 100' UNION ALL
SELECT 101,N'Data 101'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_db68f3134d18] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_db68f3134d18]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_db68f3134d18]

