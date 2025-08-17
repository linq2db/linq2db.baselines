BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

