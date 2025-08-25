BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

