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
DECLARE @p1  -- Int64
SET     @p1 = 200000000000
DECLARE @p2  -- Int64
SET     @p2 = 200000000000
DECLARE @p3  -- Int64
SET     @p3 = 200000000000
DECLARE @p4  -- Int64
SET     @p4 = 6048000000000
DECLARE @p5  -- Int64
SET     @p5 = 200000000000
DECLARE @p6  -- Int64
SET     @p6 = 200000000000

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
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29 00:00:00.000',NULL),
('2023-10-17 09:40:23.000','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p4,@p5,@p6,'2020-02-29 00:00:00.000',NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @UtcNow VarChar(23) -- AnsiString
SET     @UtcNow = '2024-06-17 11:47:17.871'
DECLARE @Date VarChar(23) -- AnsiString
SET     @Date = '2024-06-17 00:00:00.000'

SELECT
	[x_1].[StartDateTime],
	[x_1].[StartDateTime2],
	[x_1].[EndDateTime],
	[x_1].[PreNotification],
	[x_1].[PreNotification2],
	[x_1].[PreNotification3],
	[x_1].[StrField],
	[x_1].[Status],
	[x_1].[NotificationDateTime]
FROM
	(
		SELECT
			[x].[Status],
			strftime('%Y-%m-%d %H:%M:%f', [x].[StartDateTime], ((-[x].[PreNotification])/10000000.0) || ' Second') as [NotificationDateTime],
			Date([x].[StartDateTime]) as [Date_1],
			[x].[StartDateTime],
			[x].[StartDateTime2],
			[x].[EndDateTime],
			[x].[PreNotification],
			[x].[PreNotification2],
			[x].[PreNotification3],
			[x].[StrField]
		FROM
			[Common_Topology_Locations] [x]
	) [x_1]
WHERE
	([x_1].[Status] <> 'New' OR [x_1].[Status] IS NULL) AND
	([x_1].[Status] <> 'Completed' OR [x_1].[Status] IS NULL) AND
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[NotificationDateTime]) < strftime('%Y-%m-%d %H:%M:%f', @UtcNow) AND
	strftime('%Y-%m-%d %H:%M:%f', [x_1].[Date_1]) < strftime('%Y-%m-%d %H:%M:%f', @Date)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

