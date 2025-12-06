-- SqlCe

DROP TABLE [DropTableTest]

-- SqlCe

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlCe

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlCe

DROP TABLE [DropTableTest]

-- SqlCe

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

