﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NULL)
	CREATE TABLE [Issue1613]
	(
		[dt] DateTimeOffset     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Issue1613]
(
	[dt]
)
VALUES
(CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-01T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-02T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-03T17:54:55.1231234+00:40' AS DATETIMEOFFSET)),
(CAST('2020-03-04T17:54:55.1231234+00:40' AS DATETIMEOFFSET))

BeforeExecute
-- SqlServer.2008

SELECT
	[g_1].[dt]
FROM
	[Issue1613] [g_1]
GROUP BY
	[g_1].[dt]

BeforeExecute
-- SqlServer.2008

SELECT
	[r].[dt]
FROM
	[Issue1613] [r]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1613]', N'U') IS NOT NULL)
	DROP TABLE [Issue1613]

