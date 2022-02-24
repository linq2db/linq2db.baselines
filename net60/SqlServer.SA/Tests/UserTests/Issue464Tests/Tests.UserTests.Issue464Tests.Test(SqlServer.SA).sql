BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [Issue464]
(
	[Id]    Int NOT NULL,
	[Value] Int     NULL
)

BeforeExecute
INSERT BULK [Issue464](Id, Value)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue464] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE [Issue464]

