BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [BackgroundTask]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [BackgroundTask]
(
	[ID]               Int     NULL,
	[DurationID]       Int NOT NULL,
	[DurationInterval] Int NOT NULL,
	[PersonID]         Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @DurationID  -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval  -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID  -- Int32
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [BackgroundTask]

