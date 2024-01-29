BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Topology_Locations]
(
	[StartDateTime]    DateTime2     NULL,
	[StartDateTime2]   DateTime2 NOT NULL,
	[EndDateTime]      DateTime2     NULL,
	[PreNotification]  BigInt        NULL,
	[PreNotification2] BigInt        NULL,
	[PreNotification3] BigInt    NOT NULL,
	[StrField]         DateTime2     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p1  -- Int64
SET     @p1 = 200000000000
DECLARE @p2  -- Int64
SET     @p2 = 200000000000
DECLARE @p3  -- Int64
SET     @p3 = 200000000000

INSERT INTO [Common_Topology_Locations]
(
	[StartDateTime],
	[StartDateTime2],
	[EndDateTime],
	[PreNotification],
	[PreNotification2],
	[PreNotification3],
	[StrField]
)
VALUES
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[StartDateTime],
	[t1].[StartDateTime2],
	[t1].[EndDateTime],
	[t1].[PreNotification],
	[t1].[PreNotification2],
	[t1].[PreNotification3],
	[t1].[StrField]
FROM
	[Common_Topology_Locations] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[PreNotification]
FROM
	[Common_Topology_Locations] [x]
WHERE
	Cast((round([x].[PreNotification] / 10000000)) as Float) < Cast((round([x].[PreNotification] / 10000)) as Float)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((-1 * (round([t].[PreNotification] / 10000)))/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((-1 * (round([t].[PreNotification2] / 10000)))/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((Cast((round([t].[PreNotification3] / 10000)) as Float) * -1)/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((Cast((round([t].[PreNotification] / 10000)) as Float) * -1)/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((round([t].[PreNotification] / 10000))/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2],((Cast((round([t].[PreNotification] / 10000)) as Float) * -1)/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification],
	[t].[PreNotification2],
	[t].[PreNotification3],
	[t].[StartDateTime2],
	[t].[StrField]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2],((Cast((round([t].[PreNotification3] / 10000)) as Float) * -1)/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification3]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime],((Cast((round([t].[PreNotification3] / 10000)) as Float) * -1)/1000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 180000000000

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	(round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) < @p

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Cast((round((round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) / 36000000000)) as Float) < 5

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 72000000000

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	(round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) < @p

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Cast((round((round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) / 36000000000)) as Float) < 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

