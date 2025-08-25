﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [Issue3684Table] DEFAULT VALUES

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @DateTime0 DateTime
SET     @DateTime0 = CAST('2020-02-29T17:54:55.000' AS DATETIME)
DECLARE @DateTime3 DateTime
SET     @DateTime3 = CAST('2020-02-29T17:54:55.123' AS DATETIME)

INSERT INTO [Issue3684Table]
(
	[FirstAppointmentTime],
	[PassportDateOfIssue]
)
VALUES
(
	@DateTime0,
	@DateTime3
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[Issue3684Table] [t1]
ORDER BY
	[t1].[Id]

