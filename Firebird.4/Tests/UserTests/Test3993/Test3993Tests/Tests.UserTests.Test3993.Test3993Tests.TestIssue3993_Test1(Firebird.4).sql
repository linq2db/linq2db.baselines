-- Firebird.4 Firebird4
SELECT
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 3000000000
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 3000000000

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
	DateAdd(Millisecond, (Mod(CAST(@p AS BigInt), 864000000000) - Mod(Mod(CAST(@p AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(@p_1 AS BigInt) - Mod(CAST(@p_1 AS BigInt), 864000000000)) / 864000000000, "x"."StartDateTime2")) > CURRENT_TIMESTAMP AT TIME ZONE 'UTC'

-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 31536000000000000
DECLARE @p_1 BigInt -- Int64
SET     @p_1 = 31536000000000000

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
	DateAdd(Millisecond, (Mod(CAST(@p AS BigInt), 864000000000) - Mod(Mod(CAST(@p AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(@p_1 AS BigInt) - Mod(CAST(@p_1 AS BigInt), 864000000000)) / 864000000000, "x"."StartDateTime2")) > CURRENT_TIMESTAMP AT TIME ZONE 'UTC'

-- Firebird.4 Firebird4
SELECT
	CAST(CAST("x"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000,
	CAST(CAST("x"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000000
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST("x"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000000 < CAST(CAST("x"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime2" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime5" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime6" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime7" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime8",
			"t"."StartDateTime",
			"t"."PreNotification",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime2",
			DateAdd(Millisecond, -1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS DOUBLE PRECISION) / 10000), "t"."StartDateTime") as "NotificationDateTime3",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime5",
			DateAdd(Millisecond, (Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime")) as "NotificationDateTime6",
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime2")) as "NotificationDateTime7",
			DateAdd(Millisecond, (Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000) - Mod(Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST(-"t"."PreNotification3" AS BigInt) - Mod(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000, "t"."StartDateTime2")) as "NotificationDateTime9",
			Extract(day from "t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime8" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
SELECT
	"x"."NotificationDateTime4"
FROM
	(
		SELECT
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification3" AS BigInt) - Mod(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.1231'

-- Firebird.4 Firebird4
SELECT
	CAST(DATEDIFF(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 AS BIGINT)
FROM
	"Common_Topology_Locations" "t"

-- Firebird.4 Firebird4
SELECT
	CAST(DATEDIFF(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 AS BIGINT)
FROM
	"Common_Topology_Locations" "x"

-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			CAST(DATEDIFF(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 AS BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < @p

-- Firebird.4 Firebird4
SELECT
	CAST(DATEDIFF(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 AS BIGINT)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST(CAST(DATEDIFF(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 AS BIGINT) AS BigInt) AS DOUBLE PRECISION) / 36000000000 < 5

-- Firebird.4 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			CAST(DATEDIFF(millisecond, "t"."StartDateTime", "t"."EndDateTime") * 10000 AS BIGINT) as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < @p

-- Firebird.4 Firebird4
SELECT
	CAST(DATEDIFF(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 AS BIGINT)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST(CAST(DATEDIFF(millisecond, "x"."StartDateTime", "x"."EndDateTime") * 10000 AS BIGINT) AS BigInt) AS DOUBLE PRECISION) / 36000000000 < 2

