BeforeExecute
-- SqlCe

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlCe

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SqlCe

DROP TABLE [DropTableTestID]

