﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [ValueItem]
(
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[ValueItem]', N'U') IS NOT NULL)
	DROP TABLE [ValueItem]

