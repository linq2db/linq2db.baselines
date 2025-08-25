BeforeExecute
-- SqlServer.2012 (asynchronously)

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2012 (asynchronously)

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012 (asynchronously)

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2012 (asynchronously)

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

