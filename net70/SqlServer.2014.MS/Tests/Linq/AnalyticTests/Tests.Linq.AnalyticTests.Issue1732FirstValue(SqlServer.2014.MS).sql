﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Position]', N'U') IS NOT NULL)
	DROP TABLE [Position]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Position]', N'U') IS NULL)
	CREATE TABLE [Position]
	(
		[Group] Int NOT NULL,
		[Order] Int NOT NULL,
		[Id]    Int     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014
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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Position]', N'U') IS NOT NULL)
	DROP TABLE [Position]

