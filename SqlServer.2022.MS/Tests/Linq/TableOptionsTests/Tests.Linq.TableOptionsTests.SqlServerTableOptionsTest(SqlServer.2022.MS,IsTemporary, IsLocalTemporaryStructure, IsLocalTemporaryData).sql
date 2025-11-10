-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

