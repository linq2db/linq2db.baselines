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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Value2 Int -- Int32
SET     @Value2 = 10
DECLARE @Value3 Int -- Int32
SET     @Value3 = 6
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = NULL
DECLARE @Value5 Int -- Int32
SET     @Value5 = NULL
DECLARE @Value6 Int -- Int32
SET     @Value6 = NULL

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
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4,
	@Value5,
	@Value6
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [UpdateSetTest]

