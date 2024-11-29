BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Position]', N'U') IS NULL)
	CREATE TABLE [Position]
	(
		[Group] Int NOT NULL,
		[Order] Int NOT NULL,
		[Id]    Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Group Int -- Int32
SET     @Group = 7
DECLARE @Order Int -- Int32
SET     @Order = 10
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
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Group Int -- Int32
SET     @Group = 7
DECLARE @Order Int -- Int32
SET     @Order = 20
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
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Group Int -- Int32
SET     @Group = 7
DECLARE @Order Int -- Int32
SET     @Order = 30
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
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Group Int -- Int32
SET     @Group = 7
DECLARE @Order Int -- Int32
SET     @Order = 40
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
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p_1].[Id],
	LAST_VALUE([p_1].[Id]) OVER(ORDER BY [p_1].[Order_1])
FROM
	(
		SELECT
			[p].[Id],
			[p].[Order] as [Order_1]
		FROM
			[Position] [p]
		WHERE
			[p].[Group] = @group
	) [p_1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Position]

