﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012
DECLARE @Value6 Int -- Int32
SET     @Value6 = 7
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Value6] = @Value6
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take) 
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Value6 Int -- Int32
SET     @Value6 = 8
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Value6] = @Value6
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take) 
	[_].[Value6]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [UpdateSetTest]

