-- SqlServer.2008
INSERT INTO [SqlDateTimeConvTable] DEFAULT VALUES

-- SqlServer.2008
DECLARE @DateTime0 DateTime2
SET     @DateTime0 = CAST('2020-02-29T17:54:55.0000000' AS DATETIME2)
DECLARE @DateTime3 DateTime
SET     @DateTime3 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

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

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[SqlDateTimeConvTable] [t1]
ORDER BY
	[t1].[Id]

