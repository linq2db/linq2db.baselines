BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

