BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData_source]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[TableWithData_source]', N'U') IS NULL)
	CREATE TABLE [TableWithData_source]
	(
		[Id]       Int          NOT NULL,
		[Value]    Int          NOT NULL,
		[ValueStr] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [TableWithData_source]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,-1,N'Str1'),
(2,-2,N'Str2'),
(3,-3,N'Str3'),
(4,-4,N'Str4'),
(5,-5,N'Str5'),
(6,-6,N'Str6'),
(7,-7,N'Str7'),
(8,-8,N'Str8'),
(9,-9,N'Str9')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithData_destination]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[TableWithData_source]
SET
	[Value] = [TableWithData_source].[Value] + 1,
	[ValueStr] = [TableWithData_source].[ValueStr] + N'Upd'
OUTPUT
	INSERTED.[Id],
	INSERTED.[Value],
	INSERTED.[ValueStr]
INTO [tempdb]..[#TableWithData_destination]
(
	[Id],
	[Value],
	[ValueStr]
)
WHERE
	[TableWithData_source].[Id] > 3

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueStr]
FROM
	[tempdb]..[#TableWithData_destination] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithData_destination]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TableWithData_source]

