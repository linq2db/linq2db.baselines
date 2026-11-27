-- SqlServer.CS SqlServer.2025
CREATE TABLE [tempdb]..[#TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [tempdb]..[#TempIdentityRowTMP]
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
	[TempIdentityRow] [t1]

-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TempIdentityRowTMP] [t1]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#TempIdentityRowTMP]

