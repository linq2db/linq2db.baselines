BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue3684Table] DEFAULT VALUES

BeforeExecute
-- SqlServer.2012
DECLARE @DateTime0 DateTime2
SET     @DateTime0 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7)
DECLARE @DateTime3 DateTime
SET     @DateTime3 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

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
-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[Issue3684Table] [t1]
ORDER BY
	[t1].[Id]

