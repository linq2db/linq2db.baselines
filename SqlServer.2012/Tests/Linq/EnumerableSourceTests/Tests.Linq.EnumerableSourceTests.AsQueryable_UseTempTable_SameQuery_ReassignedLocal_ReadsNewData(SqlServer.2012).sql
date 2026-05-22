-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_f226a69aa421]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f226a69aa421](Id, Data)

-- SqlServer.2012

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f226a69aa421] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_f226a69aa421]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_f226a69aa421]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_f226a69aa421]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f226a69aa421](Id, Data)

-- SqlServer.2012

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f226a69aa421] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_f226a69aa421]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_f226a69aa421]

