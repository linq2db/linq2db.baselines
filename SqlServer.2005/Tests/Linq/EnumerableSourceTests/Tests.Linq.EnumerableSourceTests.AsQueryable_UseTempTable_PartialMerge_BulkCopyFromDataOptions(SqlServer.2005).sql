-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_6f1ffe3b5c55]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.2005

INSERT INTO [tempdb]..[#T_6f1ffe3b5c55]
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

-- SqlServer.2005

INSERT INTO [tempdb]..[#T_6f1ffe3b5c55]
(
	[Id],
	[Data]
)
SELECT 10,N'Data 10' UNION ALL
SELECT 11,N'Data 11' UNION ALL
SELECT 12,N'Data 12' UNION ALL
SELECT 13,N'Data 13' UNION ALL
SELECT 14,N'Data 14' UNION ALL
SELECT 15,N'Data 15' UNION ALL
SELECT 16,N'Data 16' UNION ALL
SELECT 17,N'Data 17' UNION ALL
SELECT 18,N'Data 18' UNION ALL
SELECT 19,N'Data 19'

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_6f1ffe3b5c55] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_6f1ffe3b5c55]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_6f1ffe3b5c55]

