-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTestID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTestID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

