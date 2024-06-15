BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
	[StrField],
	[Status]
)
VALUES
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29 00:00:00.000',NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[StartDateTime], ((-[t].[PreNotification])/10000000.0) || ' Second')
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
	CAST(strftime('%Y', [x].[StartDateTime2]) AS INTEGER) = 2023

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 3000000000
DECLARE @UtcNow VarChar(23) -- AnsiString
SET     @UtcNow = '2024-06-15 00:38:24.094'

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
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], (@p/10000000.0) || ' Second')) > strftime('%Y-%m-%d %H:%M:%f', @UtcNow)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 31536000000000000
DECLARE @UtcNow VarChar(23) -- AnsiString
SET     @UtcNow = '2024-06-15 00:38:24.100'

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
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], (@p/10000000.0) || ' Second')) > strftime('%Y-%m-%d %H:%M:%f', @UtcNow)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x_1].[t1],
	[x_1].[t2]
FROM
	(
		SELECT
			CAST(round([x].[PreNotification] / 10000000) AS Float) as [t2],
			CAST(round([x].[PreNotification] / 10000) AS Float) as [t1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[t2] < [x_1].[t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second'),
	CAST(strftime('%d', [x].[StrField]) AS INTEGER)
FROM
	[Common_Topology_Locations] [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second')) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second'),
	strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second'),
	CAST(strftime('%d', [x].[StrField]) AS INTEGER)
FROM
	[Common_Topology_Locations] [x]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second')) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4],
			[x].[StartDateTime],
			[x].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime8],
			CAST(strftime('%d', [x].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime4]) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime5],
			[x].[StartDateTime],
			[x].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime8],
			CAST(strftime('%d', [x].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime5]) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second') as [NotificationDateTime6],
			[x].[StartDateTime],
			[x].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime7],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime8],
			CAST(strftime('%d', [x].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime6]) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime7],
			[x].[StartDateTime],
			[x].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime8],
			CAST(strftime('%d', [x].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime7]) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTime4Utc VarChar(23) -- AnsiString
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[StartDateTime],
	[x_1].[PreNotification],
	[x_1].[NotificationDateTime],
	[x_1].[NotificationDateTime2],
	[x_1].[NotificationDateTime3],
	[x_1].[NotificationDateTime4],
	[x_1].[NotificationDateTime5],
	[x_1].[NotificationDateTime6],
	[x_1].[NotificationDateTime7],
	[x_1].[NotificationDateTime8],
	[x_1].[Day_1]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime8],
			[x].[StartDateTime],
			[x].[PreNotification],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification2] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime2],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], CAST((-1 * (round([x].[PreNotification3] / 10000))) / 1000 AS NVarChar(22)) || ' Second') as [NotificationDateTime3],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime5],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ([x].[PreNotification]/10000000.0) || ' Second') as [NotificationDateTime6],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime2], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime7],
			CAST(strftime('%d', [x].[StrField]) AS INTEGER) as [Day_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime8]) < strftime('%Y-%m-%d %H:%M:%f', @DateTime4Utc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @DateTimeUtc VarChar(23) -- AnsiString
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	[x_1].[NotificationDateTime4]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification3])/10000000.0) || ' Second') as [NotificationDateTime4]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime4]) < strftime('%Y-%m-%d %H:%M:%f', @DateTimeUtc)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	cast(round((julianday([t].[EndDateTime]) - julianday([t].[StartDateTime])) * 864000000000) as INTEGER)
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	cast(round((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 864000000000) as INTEGER)
FROM
	[Common_Topology_Locations] [x]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 180000000000

SELECT
	[x_1].[diff]
FROM
	(
		SELECT
			cast(round((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 864000000000) as INTEGER) as [diff]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[diff] < @p

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x_1].[Value_1]
FROM
	(
		SELECT
			cast(round((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 864000000000) as INTEGER) as [Value_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	CAST(round([x_1].[Value_1] / 36000000000) AS Float) < 5

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int64
SET     @p = 72000000000

SELECT
	[x_1].[diff]
FROM
	(
		SELECT
			cast(round((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 864000000000) as INTEGER) as [diff]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	[x_1].[diff] < @p

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x_1].[Value_1]
FROM
	(
		SELECT
			cast(round((julianday([x].[EndDateTime]) - julianday([x].[StartDateTime])) * 864000000000) as INTEGER) as [Value_1]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	CAST(round([x_1].[Value_1] / 36000000000) AS Float) < 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

