BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NULL)
	CREATE TABLE [Common_Topology_Locations]
	(
		[StartDateTime]    DateTime2     NULL,
		[PreNotification]  BigInt        NULL,
		[PreNotification2] Time          NULL,
		[PreNotification3] Time      NOT NULL,
		[StrField]         DateTime2     NULL
	)

BeforeExecute
-- SqlServer.2012
DECLARE @StartDateTime DateTime2
SET     @StartDateTime = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @PreNotification BigInt -- Int64
SET     @PreNotification = 20000000000
DECLARE @PreNotification2 Time
SET     @PreNotification2 = TIMEFROMPARTS(0, 33, 20, 0, 7)
DECLARE @PreNotification3 Time
SET     @PreNotification3 = TIMEFROMPARTS(0, 33, 20, 0, 7)
DECLARE @StrField DateTime2
SET     @StrField = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField]
)
VALUES
(
	@StartDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField
)

BeforeExecute
-- SqlServer.2012

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	IIF([t].[PreNotification] <> CAST(0 AS BIGINT) OR [t].[PreNotification] IS NULL, 1, 0),
	IIF([t].[PreNotification2] <> TIMEFROMPARTS(0, 0, 0, 0, 7) OR [t].[PreNotification2] IS NULL, 1, 0),
	[t].[PreNotification2],
	IIF([t].[PreNotification3] <> TIMEFROMPARTS(0, 0, 0, 0, 7), 1, 0),
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

