﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NOT NULL)
	DROP TABLE [ValueItem]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NULL)
	CREATE TABLE [ValueItem]
	(
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2005

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NOT NULL)
	DROP TABLE [ValueItem]

