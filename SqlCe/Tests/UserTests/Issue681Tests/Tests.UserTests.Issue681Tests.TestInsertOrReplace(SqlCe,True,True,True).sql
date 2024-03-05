BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
WHERE
	[Issue681Table].[ID] = @ID

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
WHERE
	[Issue681Table].[ID] = @ID

BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

