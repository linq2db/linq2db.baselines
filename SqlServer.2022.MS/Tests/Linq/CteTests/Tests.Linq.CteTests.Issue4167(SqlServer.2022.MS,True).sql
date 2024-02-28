BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NULL)
	CREATE TABLE [Issue4167Table]
	(
		[ID]        Int            NOT NULL,
		[Value]     NVarChar(4000)     NULL,
		[EnumValue] Int                NULL,

		CONSTRAINT [PK_Issue4167Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @default Int -- Int32
SET     @default = 0

WITH [CTE_1] ([EnumValue])
AS
(
	SELECT
		Coalesce([t].[EnumValue], @default)
	FROM
		[Issue4167Table] [t]
	WHERE
		[t].[Value] = N'000001'
	GROUP BY
		[t].[Value],
		[t].[EnumValue]
)
SELECT
	[r].[EnumValue]
FROM
	[CTE_1] [r]
ORDER BY
	[r].[EnumValue]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4167Table]

