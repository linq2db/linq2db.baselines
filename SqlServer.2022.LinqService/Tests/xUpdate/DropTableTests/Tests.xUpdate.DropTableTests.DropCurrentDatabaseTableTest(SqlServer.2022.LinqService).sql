BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2022

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2022

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

