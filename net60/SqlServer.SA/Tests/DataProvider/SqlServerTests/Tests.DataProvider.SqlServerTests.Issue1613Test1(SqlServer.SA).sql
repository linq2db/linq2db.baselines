﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue1613]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 1, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 2, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 3, 17, 54, 55, 1231234, 0, 40, 7)),
(DATETIMEOFFSETFROMPARTS(2020, 3, 4, 17, 54, 55, 1231234, 0, 40, 7))

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[dt]
FROM
	[Issue1613] [t1]
GROUP BY
	[t1].[dt]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue1613]

