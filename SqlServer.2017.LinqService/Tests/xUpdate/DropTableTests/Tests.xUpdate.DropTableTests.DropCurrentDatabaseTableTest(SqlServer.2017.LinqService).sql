BeforeExecute
-- SqlServer.2017 (asynchronously)

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2017 (asynchronously)

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017 (asynchronously)

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2017 (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

