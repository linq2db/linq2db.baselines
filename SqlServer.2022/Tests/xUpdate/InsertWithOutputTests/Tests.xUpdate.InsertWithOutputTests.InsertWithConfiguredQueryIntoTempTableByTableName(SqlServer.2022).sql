-- SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithData_target]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithData_output]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2022

INSERT INTO [tempdb]..[#TableWithData_target]
(
	[Id],
	[Value],
	[ValueStr]
)
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#TableWithData_output]
(
	[Id],
	[Value],
	[ValueStr]
)
SELECT
	[p].[PersonID],
	[p].[PersonID] * 10,
	[p].[FirstName] + N' ' + [p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = 'F'

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_target] [t1]

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_output] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithData_output]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithData_target]

