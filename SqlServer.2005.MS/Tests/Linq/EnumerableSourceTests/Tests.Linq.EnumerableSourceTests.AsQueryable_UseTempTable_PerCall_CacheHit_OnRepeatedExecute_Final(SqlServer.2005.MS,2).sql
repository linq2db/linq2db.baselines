-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_82457a263eed]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_82457a263eed]
(
	[Id],
	[Data]
)
SELECT 20,N'Data 20' UNION ALL
SELECT 21,N'Data 21' UNION ALL
SELECT 22,N'Data 22'

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_82457a263eed] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_82457a263eed]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_82457a263eed]

