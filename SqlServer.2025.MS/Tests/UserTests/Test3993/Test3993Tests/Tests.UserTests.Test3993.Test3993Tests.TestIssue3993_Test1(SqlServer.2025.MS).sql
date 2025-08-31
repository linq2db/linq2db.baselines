BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime]))
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
	DatePart(year, [x].[StartDateTime2]) = 2023

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value BigInt -- Int64
SET     @Value = 300000
DECLARE @Value_1 BigInt -- Int64
SET     @Value_1 = 0

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
	DateAdd(millisecond, @Value, DateAdd(hour, @Value_1, [x].[StartDateTime2])) > DATETIME2FROMPARTS(2025, 8, 31, 18, 16, 21, 4978691, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Value BigInt -- Int64
SET     @Value = 0
DECLARE @Value_1 BigInt -- Int64
SET     @Value_1 = 876000

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
	DateAdd(millisecond, @Value, DateAdd(hour, @Value_1, [x].[StartDateTime2])) > DATETIME2FROMPARTS(2025, 8, 31, 18, 16, 21, 5086934, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	CAST([x].[PreNotification] / 10000 AS Float),
	CAST([x].[PreNotification] / 10000000 AS Float)
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST([x].[PreNotification] / 10000000 AS Float) < CAST([x].[PreNotification] / 10000 AS Float)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime2] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime4] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime5] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime6] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime7] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[StartDateTime],
	[x].[PreNotification],
	[x].[NotificationDateTime],
	[x].[NotificationDateTime2],
	[x].[NotificationDateTime3],
	[x].[NotificationDateTime4],
	[x].[NotificationDateTime5],
	[x].[NotificationDateTime6],
	[x].[NotificationDateTime7],
	[x].[Value_1],
	[x].[Day_1]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime2])) as [Value_1],
			[t].[StartDateTime],
			[t].[PreNotification],
			DateAdd(millisecond, -1 * ([t].[PreNotification] / 10000), [t].[StartDateTime]) as [NotificationDateTime],
			DateAdd(millisecond, -1 * ([t].[PreNotification2] / 10000), [t].[StartDateTime]) as [NotificationDateTime2],
			DateAdd(millisecond, -1 * ([t].[PreNotification3] / 10000), [t].[StartDateTime]) as [NotificationDateTime3],
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime5],
			DateAdd(millisecond, ([t].[PreNotification] / 10000) % 3600000, DateAdd(hour, ([t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime6],
			DateAdd(millisecond, (-[t].[PreNotification] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification] / 10000) / 3600000, [t].[StartDateTime2])) as [NotificationDateTime7],
			DatePart(day, [t].[StrField]) as [Day_1]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[Value_1] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231000, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x].[NotificationDateTime4]
FROM
	(
		SELECT
			DateAdd(millisecond, (-[t].[PreNotification3] / 10000) % 3600000, DateAdd(hour, (-[t].[PreNotification3] / 10000) / 3600000, [t].[StartDateTime])) as [NotificationDateTime4]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[NotificationDateTime4] < DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [t]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST((DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100) / 36000000000 AS Float) < 5

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	[x].[diff]
FROM
	(
		SELECT
			DateDiff_Big(nanosecond, [t].[StartDateTime], [t].[EndDateTime]) / 100 as [diff]
		FROM
			[Common_Topology_Locations] [t]
	) [x]
WHERE
	[x].[diff] < @p

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100
FROM
	[Common_Topology_Locations] [x]
WHERE
	CAST((DateDiff_Big(nanosecond, [x].[StartDateTime], [x].[EndDateTime]) / 100) / 36000000000 AS Float) < 2

