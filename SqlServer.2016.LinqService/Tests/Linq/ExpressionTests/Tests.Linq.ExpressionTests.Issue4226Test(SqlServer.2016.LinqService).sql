BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue4226Table]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue4226Table]', N'U') IS NULL)
	CREATE TABLE [Issue4226Table]
	(
		[Id]   Int          NOT NULL,
		[Date] NVarChar(11)     NULL,

		CONSTRAINT [PK_Issue4226Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)) OR
	DatePart(month, [e].[Date]) IS NULL AND DatePart(month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)) IS NULL

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue4226Table]

