﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TestData2005].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [TestData2005].[dbo].[DropTableTest]

