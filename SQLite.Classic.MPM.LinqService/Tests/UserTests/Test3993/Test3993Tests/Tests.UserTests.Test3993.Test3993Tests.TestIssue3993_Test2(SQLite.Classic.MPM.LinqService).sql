BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Topology_Locations]
(
	[StartDateTime]    DateTime2         NULL,
	[StartDateTime2]   DateTime2     NOT NULL,
	[EndDateTime]      DateTime2         NULL,
	[PreNotification]  BigInt            NULL,
	[PreNotification2] BigInt            NULL,
	[PreNotification3] BigInt        NOT NULL,
	[StrField]         DateTime2         NULL,
	[Status]           NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @StartDateTime  -- DateTime
SET     @StartDateTime = '2020-02-29 17:54:55.123'
DECLARE @StartDateTime2  -- DateTime
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'
DECLARE @EndDateTime  -- DateTime
SET     @EndDateTime = '2020-02-29 21:54:55.123'
DECLARE @PreNotification  -- Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2  -- Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3  -- Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField  -- DateTime
SET     @StrField = '2020-02-29'
DECLARE @Status NVarChar -- String
SET     @Status = NULL

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[StartDateTime2],
	[EndDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField],
	[Status]
)
VALUES
(
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @StartDateTime  -- DateTime
SET     @StartDateTime = '2023-10-17 09:40:23'
DECLARE @StartDateTime2  -- DateTime
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'
DECLARE @EndDateTime  -- DateTime
SET     @EndDateTime = '2020-02-29 21:54:55.123'
DECLARE @PreNotification  -- Int64
SET     @PreNotification = 6048000000000
DECLARE @PreNotification2  -- Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3  -- Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField  -- DateTime
SET     @StrField = '2020-02-29'
DECLARE @Status NVarChar -- String
SET     @Status = NULL

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[StartDateTime2],
	[EndDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField],
	[Status]
)
VALUES
(
	@StartDateTime,
	@StartDateTime2,
	@EndDateTime,
	@PreNotification,
	@PreNotification2,
	@PreNotification3,
	@StrField,
	@Status
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-02-18 13:43:43.019'
DECLARE @Date  -- DateTime
SET     @Date = '2024-02-18'

SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status]
FROM
	[Common_Topology_Locations] [t]
WHERE
	([t].[Status] <> 'New' OR [t].[Status] IS NULL) AND
	([t].[Status] <> 'Completed' OR [t].[Status] IS NULL) AND
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], (([t].[PreNotification] * -1)/10000000.0) || ' Second')) < DateTime(@UtcNow) AND
	DateTime(Date([t].[StartDateTime])) < DateTime(@Date)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

