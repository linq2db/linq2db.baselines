BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue4167Table]', N'U') IS NULL)
	CREATE TABLE [Issue4167Table]
	(
		[ID]        Int            NOT NULL,
		[Value]     NVarChar(4000)     NULL,
		[EnumValue] Int                NULL,

		CONSTRAINT [PK_Issue4167Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'000001'
DECLARE @EnumValue Int -- Int32
SET     @EnumValue = 0

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'000001'
DECLARE @EnumValue Int -- Int32
SET     @EnumValue = 3

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'000001'
DECLARE @EnumValue Int -- Int32
SET     @EnumValue = NULL

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'000002'
DECLARE @EnumValue Int -- Int32
SET     @EnumValue = 0

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue4167Table]

