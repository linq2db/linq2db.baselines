BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[ID]
FROM
	[DropTableTest] [t1]

