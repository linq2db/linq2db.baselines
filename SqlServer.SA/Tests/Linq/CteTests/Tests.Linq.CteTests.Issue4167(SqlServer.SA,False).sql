BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NULL)
	CREATE TABLE [Issue4167Table]
	(
		[ID]        Int            NOT NULL,
		[Value]     NVarChar(4000)     NULL,
		[EnumValue] Int                NULL,

		CONSTRAINT [PK_Issue4167Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			IIF([r].[EnumValue] IS NOT NULL, [r].[EnumValue], 0) as [EnumValue]
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4167Table]

