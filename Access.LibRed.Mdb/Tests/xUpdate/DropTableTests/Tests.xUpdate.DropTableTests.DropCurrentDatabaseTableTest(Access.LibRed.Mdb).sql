-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTest]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [DropTableTest]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

