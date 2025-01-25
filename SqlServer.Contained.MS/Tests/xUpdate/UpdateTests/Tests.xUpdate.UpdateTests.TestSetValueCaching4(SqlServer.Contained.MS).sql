BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [UpdateSetTest]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
VALUES
(1,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627',10,6,NULL,NULL,NULL)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [UpdateSetTest]

