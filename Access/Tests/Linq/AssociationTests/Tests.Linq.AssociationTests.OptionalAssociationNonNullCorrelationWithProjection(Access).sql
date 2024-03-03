﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table1]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table1]
(
	[ID]  Int NOT NULL,
	[ID2] Int     NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID2 Integer -- Int32
SET     @ID2 = 1

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID2 Integer -- Int32
SET     @ID2 = 2

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	@ID,
	@ID2
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table2]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table2]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID3 Integer -- Int32
SET     @ID3 = 1

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table3]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table3]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table4]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Table4]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID3 Integer -- Int32
SET     @ID3 = 1

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID3 Integer -- Int32
SET     @ID3 = NULL

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	@ID,
	@ID3
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	([Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON (([r].[ID2] = [a_Table2].[ID] OR [r].[ID2] IS NULL AND [a_Table2].[ID] IS NULL)))
		LEFT JOIN [Table3] [a_Table3] ON (([a_Table2].[ID3] = [a_Table3].[ID] OR [a_Table2].[ID3] IS NULL AND [a_Table3].[ID] IS NULL))
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[id].[ID] = [r].[ID] AND [a_Table3].[ID] IS NOT NULL AND
			[a_Table3].[ID] = [id].[ID3]
	)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table4]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table3]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Table1]

