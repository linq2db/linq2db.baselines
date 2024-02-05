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

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SqlCe

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

