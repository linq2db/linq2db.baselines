BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Common_Topology_Locations"
		(
			"StartDateTime"    timestamp      NULL,
			"StartDateTime2"   timestamp  NOT NULL,
			"EndDateTime"      timestamp      NULL,
			"PreNotification"  Number(19)     NULL,
			"PreNotification2" Number(19)     NULL,
			"PreNotification3" Number(19) NOT NULL,
			"StrField"         timestamp      NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = 200000000000
DECLARE @:p2 Int64
SET     @:p2 = 200000000000
DECLARE @:p3 Int64
SET     @:p3 = 200000000000

INSERT ALL
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField") VALUES (TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 21:54:55.123123',:p1,:p2,:p3,TIMESTAMP '2020-02-29 00:00:00.000000')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."StartDateTime",
	t1."StartDateTime2",
	t1."EndDateTime",
	t1."PreNotification",
	t1."PreNotification2",
	t1."PreNotification3",
	t1."StrField"
FROM
	"Common_Topology_Locations" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
WHERE
	Cast((x."PreNotification" / 10000000) as Float) < Cast((x."PreNotification" / 10000) as Float)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
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
	t."StartDateTime" + (-1D * (t."PreNotification2" / 10000)) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
	t."StartDateTime" + (Cast((t."PreNotification3" / 10000) as Float) * -1D) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
	t."StartDateTime" + (Cast((t."PreNotification" / 10000) as Float) * -1D) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
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
	t."StartDateTime2" + (Cast((t."PreNotification" / 10000) as Float) * -1D) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
	t."StartDateTime2" + (Cast((t."PreNotification3" / 10000) as Float) * -1D) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DateTimeUtc TimeStamp -- DateTime
SET     @DateTimeUtc = TIMESTAMP '2020-02-29 17:54:55.123123'

SELECT
	t."StartDateTime",
	t."PreNotification3"
FROM
	"Common_Topology_Locations" t
WHERE
	t."StartDateTime" + (Cast((t."PreNotification3" / 10000) as Float) * -1D) * INTERVAL '0.001' SECOND < :DateTimeUtc

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int64
SET     @p = 180000000000

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	10000000 * (EXTRACT(SECOND FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))))) < :p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast((10000000 * (EXTRACT(SECOND FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))))) / 36000000000) as Float) < 5D

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int64
SET     @p = 72000000000

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	10000000 * (EXTRACT(SECOND FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))))) < :p

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."EndDateTime",
	t."StartDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	Cast((10000000 * (EXTRACT(SECOND FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(MINUTE FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 60 * (EXTRACT(HOUR FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP)) + 24 * EXTRACT(DAY FROM CAST (t."EndDateTime" as TIMESTAMP) - CAST (t."StartDateTime" as TIMESTAMP))))) / 36000000000) as Float) < 2D

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

