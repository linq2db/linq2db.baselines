﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [ValuesTable]
(
	[Id]         BigInt NOT NULL,
	[SomeValue1] Int    NOT NULL,
	[SomeValue2] Int    NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[ValuesTable]', N'U') IS NOT NULL)
	DROP TABLE [ValuesTable]

