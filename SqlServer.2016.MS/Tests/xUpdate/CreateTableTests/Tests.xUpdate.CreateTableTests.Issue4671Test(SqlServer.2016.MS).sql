﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [tempdb]..[#Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671EntityTMP] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#Issue4671EntityTMP]

