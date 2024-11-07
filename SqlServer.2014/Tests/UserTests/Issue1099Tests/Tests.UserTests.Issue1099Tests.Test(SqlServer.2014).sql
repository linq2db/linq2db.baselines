BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[BackgroundTask]', N'U') IS NOT NULL)
	DROP TABLE [BackgroundTask]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[BackgroundTask]', N'U') IS NULL)
	CREATE TABLE [BackgroundTask]
	(
		[ID]               Int     NULL,
		[DurationID]       Int NOT NULL,
		[DurationInterval] Int NOT NULL,
		[PersonID]         Int     NULL
	)

BeforeExecute
-- SqlServer.2014
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
-- SqlServer.2014

IF (OBJECT_ID(N'[BackgroundTask]', N'U') IS NOT NULL)
	DROP TABLE [BackgroundTask]

