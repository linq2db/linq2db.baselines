-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_e6138b0d9a91]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_e6138b0d9a91](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_e6138b0d9a91] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e6138b0d9a91]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_e6138b0d9a91]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_e6138b0d9a91](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_e6138b0d9a91] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e6138b0d9a91]

