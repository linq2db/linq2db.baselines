-- SqlServer.2022.MS SqlServer.2022
CREATE TABLE [tempdb]..[#TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2022.MS SqlServer.2022
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.2022.MS SqlServer.2022
INSERT INTO [tempdb]..[#TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TempIdentityRowTMP] [t1]

-- SqlServer.2022.MS SqlServer.2022
DROP TABLE IF EXISTS [tempdb]..[#TempIdentityRowTMP]

