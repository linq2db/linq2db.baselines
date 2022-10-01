BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UpdateSetTest]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

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
-- SqlServer.2022
DECLARE @Guid6 UniqueIdentifier -- Guid
SET     @Guid6 = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
DECLARE @Value6 Int -- Int32
SET     @Value6 = 8

UPDATE
	[x]
SET
	[x].[Value2] = 20,
	[x].[Value5] = [x].[Value2] * 5,
	[x].[Value1] = @Guid6,
	[x].[Value3] = 8,
	[x].[Value6] = @Value6
FROM
	[UpdateSetTest] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[Id],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[Value4],
	[x].[Value5],
	[x].[Value6]
FROM
	[UpdateSetTest] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UpdateSetTest]

