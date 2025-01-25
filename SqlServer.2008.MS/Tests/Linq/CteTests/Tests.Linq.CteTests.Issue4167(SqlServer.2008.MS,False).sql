BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4167Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NULL)
	CREATE TABLE [Issue4167Table]
	(
		[ID]        Int            NOT NULL,
		[Value]     NVarChar(4000)     NULL,
		[EnumValue] Int                NULL,

		CONSTRAINT [PK_Issue4167Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(1,N'000001',0),
(2,N'000001',3),
(3,N'000001',NULL),
(4,N'000002',0)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN [g_1].[EnumValue] IS NOT NULL THEN [g_1].[EnumValue]
		ELSE 0
	END
FROM
	[Issue4167Table] [g_1]
WHERE
	[g_1].[Value] = N'000001'
GROUP BY
	[g_1].[Value],
	[g_1].[EnumValue]
ORDER BY
	CASE
		WHEN [g_1].[EnumValue] IS NOT NULL THEN [g_1].[EnumValue]
		ELSE 0
	END

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4167Table]

