BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = 200000000000
DECLARE @:p2 IntervalDS -- Object
SET     @:p2 = 05:33:20
DECLARE @:p3 IntervalDS -- Object
SET     @:p3 = 05:33:20

INSERT ALL
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField", "Status") VALUES (TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 21:54:55.123123',:p1,:p2,:p3,TIMESTAMP '2020-02-29 00:00:00.000000',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

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
	To_Number(To_Char(x."StartDateTime2", 'YYYY')) = 2023

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 00:05:00
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-02-18 01:54:52.349376'

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 36500.00:00:00
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-02-18 01:54:52.356051'

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
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
WHERE
	Cast((x."PreNotification" / 10000000) as Float) < Cast((x."PreNotification" / 10000) as Float)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (-1D * (t."PreNotification" / 10000)) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (-1D * ((extract(second from t."PreNotification2") + extract(minute from t."PreNotification2") * 60 + extract(hour from t."PreNotification2") * 3600 + extract(day from t."PreNotification2") * 86400) * 1000)) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (t."PreNotification" / 10000) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime2" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StartDateTime2",
	t."StrField"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime2" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification3"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + t."PreNotification3" * -1 < :DateTimeUtc

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."EndDateTime",
	x."StartDateTime"
FROM
	"Common_Topology_Locations" x

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 05:00:00

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))) < :p

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast(((extract(second from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) + extract(minute from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 60 + extract(hour from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 3600 + extract(day from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 86400) / 3600) as Float) < 5D

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p IntervalDS -- Object
SET     @p = 02:00:00

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))) < :p

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast(((extract(second from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) + extract(minute from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 60 + extract(hour from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 3600 + extract(day from ((CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)))) * 86400) / 3600) as Float) < 2D

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

