﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ValuesTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ValuesTable]', N'U') IS NULL)
	CREATE TABLE [ValuesTable]
	(
		[Id]         BigInt NOT NULL,
		[SomeValue1] Int    NOT NULL,
		[SomeValue2] Int    NOT NULL,

		CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @SomeValue1 Int -- Int32
SET     @SomeValue1 = 2
DECLARE @SomeValue2 Int -- Int32
SET     @SomeValue2 = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	@Id,
	@SomeValue1,
	@SomeValue2
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @SomeValue1 Int -- Int32
SET     @SomeValue1 = 8
DECLARE @SomeValue2 Int -- Int32
SET     @SomeValue2 = 4

UPDATE
	[ValuesTable]
SET
	[SomeValue1] = @SomeValue1,
	[SomeValue2] = @SomeValue2

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue2] = @param

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ValuesTable]

