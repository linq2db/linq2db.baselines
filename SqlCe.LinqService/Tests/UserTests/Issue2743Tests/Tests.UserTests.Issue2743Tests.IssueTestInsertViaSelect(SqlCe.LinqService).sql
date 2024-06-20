BeforeExecute
-- SqlCe

DROP TABLE [MessageEventDTO]

BeforeExecute
-- SqlCe

CREATE TABLE [MessageEventDTO]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- SqlCe

CREATE TABLE [MessageEventDTOTb2]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- SqlCe

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- SqlCe

DROP TABLE [MessageEventDTO]

