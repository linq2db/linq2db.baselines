BeforeExecute
-- SqlCe

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlCe

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

