﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2008

SELECT 
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2008

SELECT 
	[t1].[ID]
FROM
	[DropTableTest] [t1]

