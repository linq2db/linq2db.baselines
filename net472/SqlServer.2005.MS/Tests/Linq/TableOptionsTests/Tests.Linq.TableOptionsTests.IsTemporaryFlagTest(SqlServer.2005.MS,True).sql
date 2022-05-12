﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [TestSchema].[#IsTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestSchema].[#IsTemporaryTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TestSchema].[#IsTemporaryTable]', N'U') IS NOT NULL)
	DROP TABLE [TestSchema].[#IsTemporaryTable]

