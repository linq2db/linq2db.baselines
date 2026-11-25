-- SqlServer.2005.MS SqlServer.2005
CREATE TABLE [tempdb]..[#TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [tempdb]..[#TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TempIdentityRowTMP] [t1]

-- SqlServer.2005.MS SqlServer.2005
IF (OBJECT_ID(N'[tempdb]..[#TempIdentityRowTMP]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TempIdentityRowTMP]

