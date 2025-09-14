BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2016

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

