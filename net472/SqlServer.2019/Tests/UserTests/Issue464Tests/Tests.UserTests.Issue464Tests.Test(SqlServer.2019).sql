BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
INSERT BULK [Issue464](Id, Value)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue464] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Issue464]

