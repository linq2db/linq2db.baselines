BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Common_Topology_Locations"
		(
			"StartDateTime"    timestamp                          NULL,
			"StartDateTime2"   timestamp                      NOT NULL,
			"EndDateTime"      timestamp                          NULL,
			"PreNotification"  Number(19)                         NULL,
			"PreNotification2" interval day (9) to second (9)     NULL,
			"PreNotification3" interval day (9) to second (9) NOT NULL,
			"StrField"         timestamp                          NULL,
			"Status"           VarChar(255)                       NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @:p1 Int64
SET     @:p1 = 200000000000
DECLARE @:p2 IntervalDS -- Object
SET     @:p2 = 05:33:20
DECLARE @:p3 IntervalDS -- Object
SET     @:p3 = 05:33:20

INSERT ALL
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField", "Status") VALUES (TIMESTAMP '2020-02-29 17:54:55.123100',TIMESTAMP '2020-02-29 17:54:55.123100',TIMESTAMP '2020-02-29 21:54:55.123100',:p1,:p2,:p3,TIMESTAMP '2020-02-29 00:00:00.000000',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
	EXTRACT(YEAR FROM x."StartDateTime2") = 2023

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 00:05:00
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-06-16 23:59:01.760507'

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
	x."StartDateTime2" + :p > :UtcNow

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 36500.00:00:00
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-06-16 23:59:01.766400'

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
	x."StartDateTime2" + :p > :UtcNow

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x_1."t1",
	x_1."t2"
FROM
	(
		SELECT
			CAST(x."PreNotification" / 10000000 AS Float) as "t2",
			CAST(x."PreNotification" / 10000 AS Float) as "t1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."t2" < x_1."t1"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."NotificationDateTime_1",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" as "NotificationDateTime_1",
			x."PreNotification",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."NotificationDateTime2_1",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" as "NotificationDateTime2_1",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime2" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime4" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime5" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime6" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime7" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTime4Utc TimeStamp -- DateTime
SET     @DateTime4Utc = TIMESTAMP '2020-02-29 17:54:55.123100'

SELECT
	x_1."StartDateTime",
	x_1."PreNotification",
	x_1."NotificationDateTime",
	x_1."NotificationDateTime2",
	x_1."NotificationDateTime3",
	x_1."NotificationDateTime4",
	x_1."NotificationDateTime5",
	x_1."NotificationDateTime6",
	x_1."NotificationDateTime7",
	x_1."NotificationDateTime8",
	x_1."Day_1"
FROM
	(
		SELECT
			x."StartDateTime2" - x."PreNotification3" as "NotificationDateTime8",
			x."StartDateTime",
			x."PreNotification",
			x."StartDateTime" + (-1D * (x."PreNotification" / 10000)) * INTERVAL '0.001' SECOND as "NotificationDateTime",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification2") + extract(minute from x."PreNotification2") * 60 + extract(hour from x."PreNotification2") * 3600 + extract(day from x."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime2",
			x."StartDateTime" + (-1D * ((extract(second from x."PreNotification3") + extract(minute from x."PreNotification3") * 60 + extract(hour from x."PreNotification3") * 3600 + extract(day from x."PreNotification3") * 86400) * 1000)) * INTERVAL '0.001' SECOND as "NotificationDateTime3",
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime5",
			x."StartDateTime" + (x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime6",
			x."StartDateTime2" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime7",
			EXTRACT(DAY FROM x."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime8" < :DateTime4Utc

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	x_1."NotificationDateTime4"
FROM
	(
		SELECT
			x."StartDateTime" - x."PreNotification3" as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."NotificationDateTime4" < :DateTimeUtc

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(CAST (x."EndDateTime" as TIMESTAMP) - CAST (x."StartDateTime" as TIMESTAMP))
FROM
	"Common_Topology_Locations" x

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 05:00:00

SELECT
	x_1."diff"
FROM
	(
		SELECT
			(CAST (x."EndDateTime" as TIMESTAMP) - CAST (x."StartDateTime" as TIMESTAMP)) as "diff"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."diff" < :p

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x_1."Value_1"
FROM
	(
		SELECT
			(CAST (x."EndDateTime" as TIMESTAMP) - CAST (x."StartDateTime" as TIMESTAMP)) as "Value_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	CAST((extract(second from x_1."Value_1") + extract(minute from x_1."Value_1") * 60 + extract(hour from x_1."Value_1") * 3600 + extract(day from x_1."Value_1") * 86400) / 3600 AS Float) < 5D

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 02:00:00

SELECT
	x_1."diff"
FROM
	(
		SELECT
			(CAST (x."EndDateTime" as TIMESTAMP) - CAST (x."StartDateTime" as TIMESTAMP)) as "diff"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	x_1."diff" < :p

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x_1."Value_1"
FROM
	(
		SELECT
			(CAST (x."EndDateTime" as TIMESTAMP) - CAST (x."StartDateTime" as TIMESTAMP)) as "Value_1"
		FROM
			"Common_Topology_Locations" x
	) x_1
WHERE
	CAST((extract(second from x_1."Value_1") + extract(minute from x_1."Value_1") * 60 + extract(hour from x_1."Value_1") * 3600 + extract(day from x_1."Value_1") * 86400) / 3600 AS Float) < 2D

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

