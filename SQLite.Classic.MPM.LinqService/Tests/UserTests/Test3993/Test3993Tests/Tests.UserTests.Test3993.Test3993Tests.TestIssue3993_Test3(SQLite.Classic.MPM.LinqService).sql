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
DECLARE @StartDateTime VarChar(23) -- AnsiString
SET     @StartDateTime = '2020-02-29 17:54:55.123'
DECLARE @StartDateTime2 VarChar(23) -- AnsiString
SET     @StartDateTime2 = '0001-01-01 00:00:00.000'
DECLARE @EndDateTime  -- DateTime
SET     @EndDateTime = NULL
DECLARE @PreNotification  -- Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2  -- Int64
SET     @PreNotification2 = NULL
DECLARE @PreNotification3  -- Int64
SET     @PreNotification3 = 0
DECLARE @StrField  -- DateTime
SET     @StrField = NULL
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

SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')
FROM
	[Common_Topology_Locations] [t]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')
FROM
	[Common_Topology_Locations] [t]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')) AS INTEGER) = 13
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[StartDateTime],
	[t].[StartDateTime2],
	[t].[EndDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StrField],
	[t].[Status],
	strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')
FROM
	[Common_Topology_Locations] [t]
WHERE
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')) AS INTEGER) = 51
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[StartDateTime],
	[t1].[StartDateTime2],
	[t1].[EndDateTime],
	[t1].[PreNotification],
	[t1].[PreNotification2],
	[t1].[PreNotification3],
	[t1].[StrField],
	[t1].[Status],
	[t1].[NotificationDateTime]
FROM
	(
		SELECT
			CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second')) AS INTEGER) as [Second_1],
			[x].[StartDateTime],
			[x].[StartDateTime2],
			[x].[EndDateTime],
			[x].[PreNotification],
			[x].[PreNotification2],
			[x].[PreNotification3],
			[x].[StrField],
			[x].[Status],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime]
		FROM
			[Common_Topology_Locations] [x]
	) [t1]
WHERE
	[t1].[Second_1] >= 52 AND [t1].[Second_1] <= 54
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

