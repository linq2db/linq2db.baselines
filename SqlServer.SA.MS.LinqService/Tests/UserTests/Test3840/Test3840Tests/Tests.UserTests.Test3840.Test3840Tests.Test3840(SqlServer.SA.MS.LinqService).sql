BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	DatePart(day, [t].[StrField])
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Common_Topology_Locations]

