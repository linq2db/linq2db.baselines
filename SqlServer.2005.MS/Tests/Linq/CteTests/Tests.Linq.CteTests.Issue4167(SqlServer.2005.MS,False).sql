BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4167Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NULL)
	CREATE TABLE [Issue4167Table]
	(
		[ID]        Int            NOT NULL,
		[Value]     NVarChar(4000)     NULL,
		[EnumValue] Int                NULL,

		CONSTRAINT [PK_Issue4167Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
SELECT 1,N'000001',0 UNION ALL
SELECT 2,N'000001',3 UNION ALL
SELECT 3,N'000001',NULL UNION ALL
SELECT 4,N'000002',0

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			CASE
				WHEN [r].[EnumValue] IS NOT NULL THEN [r].[EnumValue]
				ELSE 0
			END as [EnumValue]
		FROM
			[Issue4167Table] [r]
		WHERE
			[r].[Value] = N'000001' AND [r].[Value] IS NOT NULL
		GROUP BY
			[r].[Value],
			[r].[EnumValue]
	) [t1]
ORDER BY
	[t1].[EnumValue]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4167Table]

