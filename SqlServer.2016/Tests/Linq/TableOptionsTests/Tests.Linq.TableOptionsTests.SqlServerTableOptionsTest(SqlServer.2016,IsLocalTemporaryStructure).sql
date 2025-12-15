-- SqlServer.2016

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

