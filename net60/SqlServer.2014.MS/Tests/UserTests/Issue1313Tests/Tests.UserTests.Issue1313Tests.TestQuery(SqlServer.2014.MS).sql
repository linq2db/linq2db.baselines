﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [ValueItem]
(
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NOT NULL)
	DROP TABLE [ValueItem]

