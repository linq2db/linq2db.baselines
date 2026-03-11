-- SqlCe

DROP TABLE [DropTableTestID]

-- SqlCe

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlCe

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlCe

DROP TABLE [DropTableTestID]

-- SqlCe

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

