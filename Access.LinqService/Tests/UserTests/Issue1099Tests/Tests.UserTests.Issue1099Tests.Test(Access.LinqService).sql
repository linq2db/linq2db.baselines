﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [BackgroundTask]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [BackgroundTask]
(
	[ID]               Int     NULL,
	[DurationID]       Int NOT NULL,
	[DurationInterval] Int NOT NULL,
	[PersonID]         Int     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
	([task_1].[PersonID] = @personId)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [BackgroundTask]

