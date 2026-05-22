-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_658ce352352c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_658ce352352c](Id, Data)

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_658ce352352c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_658ce352352c]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_658ce352352c]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_658ce352352c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_658ce352352c](Id, Data)

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_658ce352352c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_658ce352352c]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_658ce352352c]

