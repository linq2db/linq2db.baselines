﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4671Entity]', N'U') IS NOT NULL)
	DROP TABLE [Issue4671Entity]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4671Entity]', N'U') IS NULL)
	CREATE TABLE [Issue4671Entity]
	(
		[Id]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL
	)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [tempdb]..[#Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [tempdb]..[#Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671EntityTMP] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#Issue4671EntityTMP]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Issue4671EntityTMP]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4671Entity]', N'U') IS NOT NULL)
	DROP TABLE [Issue4671Entity]

