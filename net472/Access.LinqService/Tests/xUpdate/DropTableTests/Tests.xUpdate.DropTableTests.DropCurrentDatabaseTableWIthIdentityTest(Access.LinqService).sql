BeforeExecute
-- Access AccessOleDb

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DropTableTestID]

