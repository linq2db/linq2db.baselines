BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = TIMESTAMP '2020-02-29 17:54:55.123100'
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = TIMESTAMP '0001-01-01 00:00:00.000000'
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = NULL
DECLARE @PreNotification Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2 Varchar2 -- String
SET     @PreNotification2 = NULL
DECLARE @PreNotification3 IntervalDS -- Object
SET     @PreNotification3 = 00:00:00
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = NULL
DECLARE @Status Varchar2 -- String
SET     @Status = NULL

INSERT INTO "Common_Topology_Locations"
(
	"StartDateTime",
	"StartDateTime2",
	"EndDateTime",
	"PreNotification",
	"PreNotification2",
	"PreNotification3",
	"StrField",
	"Status"
)
VALUES
(
	:StartDateTime,
	:StartDateTime2,
	:EndDateTime,
	:PreNotification,
	:PreNotification2,
	:PreNotification3,
	:StrField,
	:Status
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."StartDateTime",
	t."PreNotification",
	t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	EXTRACT(HOUR FROM (t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND)) = 13
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	EXTRACT(MINUTE FROM (t."StartDateTime" + (-t."PreNotification" / 10000) * INTERVAL '0.001' SECOND)) = 51
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."StartDateTime",
	t1."StartDateTime2",
	t1."EndDateTime",
	t1."PreNotification",
	t1."PreNotification2",
	t1."PreNotification3",
	t1."StrField",
	t1."Status",
	t1."NotificationDateTime"
FROM
	(
		SELECT
			EXTRACT(SECOND FROM (x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND)) as "Second_1",
			x."StartDateTime",
			x."StartDateTime2",
			x."EndDateTime",
			x."PreNotification",
			x."PreNotification2",
			x."PreNotification3",
			x."StrField",
			x."Status",
			x."StartDateTime" + (-x."PreNotification" / 10000) * INTERVAL '0.001' SECOND as "NotificationDateTime"
		FROM
			"Common_Topology_Locations" x
	) t1
WHERE
	t1."Second_1" >= 52 AND t1."Second_1" <= 54
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

