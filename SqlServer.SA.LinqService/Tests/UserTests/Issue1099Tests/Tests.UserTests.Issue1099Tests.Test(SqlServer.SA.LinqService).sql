﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [BackgroundTask]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[BackgroundTask]', N'U') IS NULL)
	CREATE TABLE [BackgroundTask]
	(
		[ID]               Int     NULL,
		[DurationID]       Int NOT NULL,
		[DurationInterval] Int NOT NULL,
		[PersonID]         Int     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @DurationID Int -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval Int -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID Int -- Int32
SET     @PersonID = 1

INSERT INTO [BackgroundTask]
(
	[ID],
	[DurationID],
	[DurationInterval],
	[PersonID]
)
VALUES
(
	@ID,
	@DurationID,
	@DurationInterval,
	@PersonID
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @personId Int -- Int32
SET     @personId = 1

SELECT
	[task_1].[ID],
	[task_1].[DurationID],
	[task_1].[DurationInterval],
	[task_1].[PersonID]
FROM
	[BackgroundTask] [task_1]
WHERE
	[task_1].[PersonID] = @personId AND [task_1].[PersonID] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [BackgroundTask]

