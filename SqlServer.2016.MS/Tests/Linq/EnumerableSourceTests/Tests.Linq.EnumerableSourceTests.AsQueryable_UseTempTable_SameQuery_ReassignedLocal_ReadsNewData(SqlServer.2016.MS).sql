-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_38f091f99219]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_38f091f99219](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_38f091f99219] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_38f091f99219]

-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_38f091f99219]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_38f091f99219](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_38f091f99219] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_38f091f99219]

