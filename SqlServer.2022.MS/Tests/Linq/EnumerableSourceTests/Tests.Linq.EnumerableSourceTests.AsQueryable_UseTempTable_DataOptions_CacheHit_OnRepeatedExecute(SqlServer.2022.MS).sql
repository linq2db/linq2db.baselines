-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_51bb0d47f8ec]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_51bb0d47f8ec](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_51bb0d47f8ec] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_51bb0d47f8ec]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_51bb0d47f8ec]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_51bb0d47f8ec](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_51bb0d47f8ec] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_51bb0d47f8ec]

