BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue4226Table]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue4226Table]', N'U') IS NULL)
	CREATE TABLE [Issue4226Table]
	(
		[Id]   Int          NOT NULL,
		[Date] NVarChar(11)     NULL,

		CONSTRAINT [PK_Issue4226Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Date NVarChar(11) -- String
SET     @Date = N'02-29-2020'

INSERT INTO [Issue4226Table]
(
	[Id],
	[Date]
)
VALUES
(
	@Id,
	@Date
)

BeforeExecute
-- SqlServer.2019
DECLARE @Month Int -- Int32
SET     @Month = 2

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = @Month

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue4226Table]

