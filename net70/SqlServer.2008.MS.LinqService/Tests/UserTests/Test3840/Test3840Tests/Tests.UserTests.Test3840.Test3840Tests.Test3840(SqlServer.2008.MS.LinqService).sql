﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @StartDateTime DateTime2
SET     @StartDateTime = CAST('2023-02-06T19:33:56.2155193' AS DATETIME2)
DECLARE @PreNotification BigInt -- Int64
SET     @PreNotification = 20000000000
DECLARE @PreNotification2 Time
SET     @PreNotification2 = CAST('00:33:20.0000000' AS TIME)
DECLARE @PreNotification3 Time
SET     @PreNotification3 = CAST('00:33:20.0000000' AS TIME)
DECLARE @StrField DateTime2
SET     @StrField = CAST('2023-02-06T00:00:00.0000000' AS DATETIME2)

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Common_Topology_Locations]', N'U') IS NOT NULL)
	DROP TABLE [Common_Topology_Locations]

