-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [SqlDateTimeConvTable] DEFAULT VALUES

-- SqlServer.2005.MS SqlServer.2005
DECLARE @DateTime0 DateTime
SET     @DateTime0 = CAST('2020-02-29T17:54:55.000' AS DATETIME)
DECLARE @DateTime3 DateTime
SET     @DateTime3 = CAST('2020-02-29T17:54:55.123' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[SqlDateTimeConvTable] [t1]
ORDER BY
	[t1].[Id]

