BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table4]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue681Table4]
(
	[ID]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue681Table4]

