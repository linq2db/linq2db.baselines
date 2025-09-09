BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(hour from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")) = 13
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(minute from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")) = 51
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime")
FROM
	"Common_Topology_Locations" "t"
WHERE
	CAST(Floor(Extract(second from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime"))) AS Int) >= 52 AND
	CAST(Floor(Extract(second from DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime"))) AS Int) <= 54
FETCH NEXT 1 ROWS ONLY

