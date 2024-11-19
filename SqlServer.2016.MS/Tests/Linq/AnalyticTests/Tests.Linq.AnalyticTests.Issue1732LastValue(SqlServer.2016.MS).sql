BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Position]', N'U') IS NULL)
	CREATE TABLE [Position]
	(
		[Group] Int NOT NULL,
		[Order] Int NOT NULL,
		[Id]    Int     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Position]

