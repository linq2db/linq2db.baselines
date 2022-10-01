BeforeExecute
-- SqlCe

DROP TABLE [UpdateSetTest]

BeforeExecute
-- SqlCe

CREATE TABLE [UpdateSetTest]
(
	[Id]     Int              NOT NULL,
	[Value1] UNIQUEIDENTIFIER NOT NULL,
	[Value2] Int              NOT NULL,
	[Value3] Int              NOT NULL,
	[Value4] UNIQUEIDENTIFIER     NULL,
	[Value5] Int                  NULL,
	[Value6] Int                  NULL,

	CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
DECLARE @Guid6 UniqueIdentifier -- Guid
SET     @Guid6 = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
DECLARE @Value6 Int -- Int32
SET     @Value6 = 8

UPDATE
	[UpdateSetTest]
SET
	[UpdateSetTest].[Value2] = 20,
	[UpdateSetTest].[Value5] = [UpdateSetTest].[Value2] * 5,
	[UpdateSetTest].[Value1] = @Guid6,
	[UpdateSetTest].[Value3] = 8,
	[UpdateSetTest].[Value6] = @Value6
WHERE
	[UpdateSetTest].[Id] = 1

BeforeExecute
-- SqlCe
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
-- SqlCe

DROP TABLE [UpdateSetTest]

