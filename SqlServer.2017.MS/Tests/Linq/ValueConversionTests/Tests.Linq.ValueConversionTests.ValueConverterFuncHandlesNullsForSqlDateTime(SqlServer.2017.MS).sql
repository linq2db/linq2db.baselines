-- SqlServer.2017.MS SqlServer.2017
INSERT INTO [SqlDateTimeConvTable] DEFAULT VALUES

-- SqlServer.2017.MS SqlServer.2017
DECLARE @DateTime0 DateTime2
SET     @DateTime0 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 0, 7)
DECLARE @DateTime3 DateTime
SET     @DateTime3 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

INSERT INTO [SqlDateTimeConvTable]
(
	[FirstAppointmentTime],
	[PassportDateOfIssue]
)
VALUES
(
	@DateTime0,
	@DateTime3
)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[SqlDateTimeConvTable] [t1]
ORDER BY
	[t1].[Id]

