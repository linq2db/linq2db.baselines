-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_1ad5509cec1c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_1ad5509cec1c](Id, Data)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_1ad5509cec1c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_1ad5509cec1c]

-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_1ad5509cec1c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_1ad5509cec1c](Id, Data)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_1ad5509cec1c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_1ad5509cec1c]

