BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue3684Table]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Issue3684Table]', N'U') IS NULL)
	CREATE TABLE [Issue3684Table]
	(
		[Id]                   Int           NOT NULL IDENTITY,
		[FirstAppointmentTime] DateTime2(0)      NULL,
		[PassportDateOfIssue]  DateTime          NULL,

		CONSTRAINT [PK_Issue3684Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Issue3684Table] DEFAULT VALUES

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[FirstAppointmentTime],
	[t1].[PassportDateOfIssue]
FROM
	[Issue3684Table] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue3684Table]

