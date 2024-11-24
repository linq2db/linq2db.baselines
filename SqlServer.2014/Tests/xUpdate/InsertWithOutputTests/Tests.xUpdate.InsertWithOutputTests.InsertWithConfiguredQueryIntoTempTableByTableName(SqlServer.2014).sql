BeforeExecute
-- SqlServer.2014

CREATE TABLE [tempdb]..[#TableWithData_target]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2014

CREATE TABLE [tempdb]..[#TableWithData_output]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2014

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

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_target] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_output] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_output]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_output]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TableWithData_target]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithData_target]

