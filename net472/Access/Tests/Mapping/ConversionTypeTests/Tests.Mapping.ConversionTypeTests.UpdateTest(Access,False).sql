﻿BeforeExecute
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
SET     @Data = '***XXX***'

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
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***VVV***'

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
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = @Data
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access AccessOleDb
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = '***XXX***'

BeforeExecute
-- Access AccessOleDb
DECLARE @Data VarWChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarWChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = @p

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

