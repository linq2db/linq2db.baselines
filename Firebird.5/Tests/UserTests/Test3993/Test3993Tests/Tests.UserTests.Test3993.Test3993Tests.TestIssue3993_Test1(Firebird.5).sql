BeforeExecute
-- Firebird.5 Firebird4

SELECT
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."StartDateTime",
	"t1"."StartDateTime2",
	"t1"."EndDateTime",
	"t1"."PreNotification",
	"t1"."PreNotification2",
	"t1"."PreNotification3",
	"t1"."StrField",
	"t1"."Status"
FROM
	"Common_Topology_Locations" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	Extract(year from "x"."StartDateTime2") = 2023

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	DateAdd(Millisecond, 300000, "x"."StartDateTime2") > CAST('2025-08-31 17:54:32.623' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	DateAdd(Millisecond, 3153600000000, "x"."StartDateTime2") > CAST('2025-08-31 17:54:32.628' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CAST("x"."PreNotification" / 10000 AS Float),
	CAST("x"."PreNotification" / 10000000 AS Float)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST("x"."PreNotification" / 10000000 AS Float) < CAST("x"."PreNotification" / 10000 AS Float)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime2" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime5" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime6" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime7" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime2") as "Value_1",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * ("t"."PreNotification" / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * ("t"."PreNotification2" / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * ("t"."PreNotification3" / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime5",
			DateAdd(Millisecond, "t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime6",
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime2") as "NotificationDateTime7",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."Value_1" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."NotificationDateTime4"
FROM
	(
		SELECT
			DateAdd(Millisecond, -"t"."PreNotification3" / 10000, "t"."StartDateTime") as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < CAST('2020-02-29 17:54:55.123' AS timestamp)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "x"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 as BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < @p

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST((Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)) / 36000000000 AS Float) < 5

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			Cast(DateDiff(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 as BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < @p

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST((Cast(DateDiff(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 as BIGINT)) / 36000000000 AS Float) < 2

