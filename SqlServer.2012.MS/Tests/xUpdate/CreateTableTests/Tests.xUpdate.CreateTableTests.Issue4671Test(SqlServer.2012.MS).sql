-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [tempdb]..[#Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671EntityTMP] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#Issue4671EntityTMP]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue4671EntityTMP]

