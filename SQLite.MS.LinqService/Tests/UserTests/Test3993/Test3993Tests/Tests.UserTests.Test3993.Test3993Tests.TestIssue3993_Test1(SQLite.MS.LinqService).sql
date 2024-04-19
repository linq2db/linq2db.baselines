BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t1].[StartDateTime],
	[t1].[StartDateTime2],
	[t1].[EndDateTime],
	[t1].[PreNotification],
	[t1].[PreNotification2],
	[t1].[PreNotification3],
	[t1].[StrField],
	[t1].[Status]
FROM
	[Common_Topology_Locations] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	Cast(StrFTime('%Y', [x].[StartDateTime2]) as int) = 2023

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int64
SET     @p = 3000000000
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-04-19 15:09:25.219'

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], (@p/10000000.0) || ' Second')) > DateTime(@UtcNow)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int64
SET     @p = 31536000000000000
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-04-19 15:09:25.224'

SELECT
	[x].[StartDateTime],
	[x].[StartDateTime2],
	[x].[EndDateTime],
	[x].[PreNotification],
	[x].[PreNotification2],
	[x].[PreNotification3],
	[x].[StrField],
	[x].[Status]
FROM
	[Common_Topology_Locations] [x]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], (@p/10000000.0) || ' Second')) > DateTime(@UtcNow)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[PreNotification]
FROM
	[Common_Topology_Locations] [x]
WHERE
	Cast((round([x].[PreNotification] / 10000000)) as Float) < Cast((round([x].[PreNotification] / 10000)) as Float)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], (([t].[PreNotification3] * -1)/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite
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
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], (([t].[PreNotification] * -1)/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite
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
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ([t].[PreNotification]/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite
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
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], (([t].[PreNotification] * -1)/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite
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
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime2], (([t].[PreNotification3] * -1)/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[t].[StartDateTime],
	[t].[PreNotification3]
FROM
	[Common_Topology_Locations] [t]
WHERE
	DateTime(strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], (([t].[PreNotification3] * -1)/10000000.0) || ' Second')) < DateTime(@DateTimeUtc)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[EndDateTime],
	[x].[StartDateTime]
FROM
	[Common_Topology_Locations] [x]

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Cast((round((round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) / 36000000000)) as Float) < 5

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t].[EndDateTime],
	[t].[StartDateTime]
FROM
	[Common_Topology_Locations] [t]
WHERE
	Cast((round((round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000)) / 36000000000)) as Float) < 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

