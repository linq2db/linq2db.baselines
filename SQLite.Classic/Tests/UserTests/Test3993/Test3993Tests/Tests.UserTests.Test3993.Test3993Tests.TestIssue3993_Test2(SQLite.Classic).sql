BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
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
('2020-02-29 17:54:55.123','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p1,@p2,@p3,'2020-02-29',NULL),
('2023-10-17 09:40:23','2020-02-29 17:54:55.123','2020-02-29 21:54:55.123',@p4,@p5,@p6,'2020-02-29',NULL)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-02-07 19:49:13.73'
DECLARE @Date  -- DateTime
SET     @Date = '2024-02-07'

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Topology_Locations]

