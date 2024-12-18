BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BackgroundTask') IS NOT NULL)
	DROP TABLE [BackgroundTask]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BackgroundTask') IS NULL)
	EXECUTE('
		CREATE TABLE [BackgroundTask]
		(
			[ID]               Int     NULL,
			[DurationID]       Int NOT NULL,
			[DurationInterval] Int NOT NULL,
			[PersonID]         Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @DurationID Integer -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval Integer -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @personId Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BackgroundTask') IS NOT NULL)
	DROP TABLE [BackgroundTask]

