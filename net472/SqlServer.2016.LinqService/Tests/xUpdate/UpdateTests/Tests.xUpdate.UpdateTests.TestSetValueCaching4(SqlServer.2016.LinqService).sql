﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Value4] = @Value4
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take)
	[_].[Value4]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Value4] = @Value4
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take)
	[_].[Value4]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[UpdateSetTest]', N'U') IS NOT NULL)
	DROP TABLE [UpdateSetTest]

