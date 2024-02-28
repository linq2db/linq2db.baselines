BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue681Table4]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue681Table4]
(
	[ID]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue681Table4]

