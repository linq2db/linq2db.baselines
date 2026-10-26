-- SqlServer.CS SqlServer.2025
CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#TestTable]

