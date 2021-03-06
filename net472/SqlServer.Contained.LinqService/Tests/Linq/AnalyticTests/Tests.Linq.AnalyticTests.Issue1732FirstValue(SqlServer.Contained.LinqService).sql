﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Position]', N'U') IS NULL)
	CREATE TABLE [Position]
	(
		[Group] Int NOT NULL,
		[Order] Int NOT NULL,
		[Id]    Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Group_1 Int -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int -- Int32
SET     @Order_1 = 10
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Group_1 Int -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int -- Int32
SET     @Order_1 = 20
DECLARE @Id Int -- Int32
SET     @Id = 6

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Group_1 Int -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int -- Int32
SET     @Order_1 = 30
DECLARE @Id Int -- Int32
SET     @Id = NULL

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Group_1 Int -- Int32
SET     @Group_1 = 7
DECLARE @Order_1 Int -- Int32
SET     @Order_1 = 40
DECLARE @Id Int -- Int32
SET     @Id = NULL

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group_1,
	@Order_1,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @group_1 Int -- Int32
SET     @group_1 = 7

SELECT
	[p].[Id],
	FIRST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order] DESC)
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group_1

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Position]

