BeforeExecute
-- Access AccessOleDb

DROP TABLE [TrimTestTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***HHH***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TrimTestTable]

