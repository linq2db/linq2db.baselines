-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_35cb62040f9e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_35cb62040f9e](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_35cb62040f9e] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_35cb62040f9e]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_35cb62040f9e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_35cb62040f9e](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_35cb62040f9e] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_35cb62040f9e]

