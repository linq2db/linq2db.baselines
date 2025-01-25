BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UpdateSetTest]', N'U') IS NOT NULL)
	DROP TABLE [UpdateSetTest]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UpdateSetTest]', N'U') IS NULL)
	CREATE TABLE [UpdateSetTest]
	(
		[Id]     Int              NOT NULL,
		[Value1] UniqueIdentifier NOT NULL,
		[Value2] Int              NOT NULL,
		[Value3] Int              NOT NULL,
		[Value4] UniqueIdentifier     NULL,
		[Value5] Int                  NULL,
		[Value6] Int                  NULL,

		CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [UpdateSetTest]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4],
	[Value5],
	[Value6]
)
SELECT 1,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',10,6,NULL,NULL,NULL

BeforeExecute
-- SqlServer.2005
DECLARE @Value6 Int -- Int32
SET     @Value6 = 7
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value6]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.2005
DECLARE @Value6 Int -- Int32
SET     @Value6 = 8
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value6]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UpdateSetTest]', N'U') IS NOT NULL)
	DROP TABLE [UpdateSetTest]

