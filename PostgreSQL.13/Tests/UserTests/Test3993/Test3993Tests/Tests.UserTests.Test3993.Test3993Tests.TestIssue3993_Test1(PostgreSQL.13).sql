BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."StartDateTime",
	t1."StartDateTime2",
	t1."EndDateTime",
	t1."PreNotification",
	t1."PreNotification2",
	t1."PreNotification3",
	t1."StrField",
	t1."Status"
FROM
	"Common_Topology_Locations" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	Floor(Extract(year From x."StartDateTime2"))::Int = 2023

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Interval -- Object
SET     @Value = 00:05:00

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	x."StartDateTime2" + :Value > '2025-08-31 18:15:17.460'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Interval -- Object
SET     @Value = 36500.00:00:00

SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status"
FROM
	"Common_Topology_Locations" x
WHERE
	x."StartDateTime2" + :Value > '2025-08-31 18:15:17.463'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(x."PreNotification" / 10000)::Float,
	(x."PreNotification" / 10000000)::Float
FROM
	"Common_Topology_Locations" x
WHERE
	(x."PreNotification" / 10000000)::Float < (x."PreNotification" / 10000)::Float

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime2" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime4" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime5" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime6" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime7" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."StartDateTime",
	x."PreNotification",
	x."NotificationDateTime",
	x."NotificationDateTime2",
	x."NotificationDateTime3",
	x."NotificationDateTime4",
	x."NotificationDateTime5",
	x."NotificationDateTime6",
	x."NotificationDateTime7",
	x."Value_1",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" - t."PreNotification3" as "Value_1",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1 * (t."PreNotification" / 10000)) * Interval '1 Millisecond' as "NotificationDateTime",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime2",
			t."StartDateTime" + (-1 * ((extract(second from t."PreNotification3") + extract(minute from t."PreNotification3") * 60 + extract(hour from t."PreNotification3") * 3600 + extract(day from t."PreNotification3") * 86400) * 1000)) * Interval '1 Millisecond' as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime5",
			t."StartDateTime" + (t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime6",
			t."StartDateTime2" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime7",
			Floor(Extract(day From t."StrField"))::Int as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."Value_1" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."NotificationDateTime4"
FROM
	(
		SELECT
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime4" < '2020-02-29 17:54:55.123'::timestamp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	((t."EndDateTime"::timestamp - t."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" x

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 05:00:00

SELECT
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" x
WHERE
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval < :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" x
WHERE
	((extract(second from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) + extract(minute from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 60 + extract(hour from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 3600 + extract(day from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 86400) / 3600)::Float < 5

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 02:00:00

SELECT
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" x
WHERE
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval < :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval
FROM
	"Common_Topology_Locations" x
WHERE
	((extract(second from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) + extract(minute from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 60 + extract(hour from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 3600 + extract(day from ((x."EndDateTime"::timestamp - x."StartDateTime"::timestamp))::interval) * 86400) / 3600)::Float < 2

