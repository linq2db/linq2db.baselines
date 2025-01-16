BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4226Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4226Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4226Table]', N'U') IS NULL)
	CREATE TABLE [Issue4226Table]
	(
		[Id]   Int          NOT NULL,
		[Date] NVarChar(11)     NULL,

		CONSTRAINT [PK_Issue4226Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[e].[Id],
	[e].[Date]
FROM
	[Issue4226Table] [e]
WHERE
	DatePart(month, [e].[Date]) = DatePart(month, CAST('2020-02-29T00:00:00.0000000' AS DATETIME2))

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4226Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4226Table]

