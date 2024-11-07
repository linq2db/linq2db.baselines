BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [BackgroundTask]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [BackgroundTask]
(
	[ID]               Int     NULL,
	[DurationID]       Int NOT NULL,
	[DurationInterval] Int NOT NULL,
	[PersonID]         Int     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [BackgroundTask]

