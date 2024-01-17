BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Position]', N'U') IS NOT NULL)
	DROP TABLE [Position]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Position]', N'U') IS NULL)
	CREATE TABLE [Position]
	(
		[Group] Int NOT NULL,
		[Order] Int NOT NULL,
		[Id]    Int     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @group Int -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LEAD([p].[Id], 1, -1) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Position]', N'U') IS NOT NULL)
	DROP TABLE [Position]

