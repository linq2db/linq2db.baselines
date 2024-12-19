BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Database\TestData].[Issue681Table] [t1]
SET
	[t1].[Value] = @Value
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData].[Issue681Table]
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Database\TestData].[Issue681Table] [t1]
SET
	[t1].[Value] = @Value
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table]

