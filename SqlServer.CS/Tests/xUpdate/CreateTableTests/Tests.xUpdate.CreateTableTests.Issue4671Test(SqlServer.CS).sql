-- SqlServer.CS SqlServer.2025
CREATE TABLE [tempdb]..[#Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [tempdb]..[#Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#Issue4671EntityTMP] [t1]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#Issue4671EntityTMP]

