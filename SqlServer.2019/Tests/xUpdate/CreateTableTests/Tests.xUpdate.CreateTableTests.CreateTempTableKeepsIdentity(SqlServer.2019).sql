-- SqlServer.2019
CREATE TABLE [tempdb]..[#TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2019
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.2019
INSERT INTO [tempdb]..[#TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TempIdentityRowTMP] [t1]

-- SqlServer.2019
DROP TABLE IF EXISTS [tempdb]..[#TempIdentityRowTMP]

