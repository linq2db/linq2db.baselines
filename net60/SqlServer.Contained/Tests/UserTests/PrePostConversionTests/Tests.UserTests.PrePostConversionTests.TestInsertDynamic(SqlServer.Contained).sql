﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [ValuesTable]
(
	[Id]         BigInt NOT NULL,
	[SomeValue1] Int    NOT NULL,
	[SomeValue2] Int    NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	1,
	2,
	@param
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [ValuesTable]

