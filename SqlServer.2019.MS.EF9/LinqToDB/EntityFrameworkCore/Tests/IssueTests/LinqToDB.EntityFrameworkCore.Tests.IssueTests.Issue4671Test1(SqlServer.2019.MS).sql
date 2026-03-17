-- SqlServer.2019

CREATE TABLE [tempdb]..[#Issue4671Entity1TMP]
(
	[Id]    int  NOT NULL IDENTITY,
	[Value] int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



-- SqlServer.2019

INSERT INTO [Issue4671Entity1]
(
	[Value]
)
VALUES
(
	1
)



-- SqlServer.2019

INSERT INTO [tempdb]..[#Issue4671Entity1TMP]
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
	[Issue4671Entity1] [t1]



-- SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671Entity1TMP] [t1]



-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#Issue4671Entity1TMP]



