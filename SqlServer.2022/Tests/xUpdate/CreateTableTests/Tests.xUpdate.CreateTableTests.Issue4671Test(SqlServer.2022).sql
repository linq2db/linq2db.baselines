BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue4671Entity]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue4671Entity]', N'U') IS NULL)
	CREATE TABLE [Issue4671Entity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_Issue4671Entity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

CREATE TABLE [tempdb]..[#Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2022

INSERT INTO [tempdb]..[#Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- SqlServer.2022

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671EntityTMP] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#Issue4671EntityTMP]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue4671Entity]

