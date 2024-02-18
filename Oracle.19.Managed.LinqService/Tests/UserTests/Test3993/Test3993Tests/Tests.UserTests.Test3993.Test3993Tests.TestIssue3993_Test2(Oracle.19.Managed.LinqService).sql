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
SET     @StartDateTime = TIMESTAMP '2020-02-29 17:54:55.123123'
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = TIMESTAMP '2020-02-29 17:54:55.123123'
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = TIMESTAMP '2020-02-29 21:54:55.123123'
DECLARE @PreNotification Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2 IntervalDS -- Object
SET     @PreNotification2 = 05:33:20
DECLARE @PreNotification3 IntervalDS -- Object
SET     @PreNotification3 = 05:33:20
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = TIMESTAMP '2020-02-29 00:00:00.000000'
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
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = TIMESTAMP '2023-10-17 09:40:23.000000'
DECLARE @StartDateTime2 TimeStamp -- DateTime
SET     @StartDateTime2 = TIMESTAMP '2020-02-29 17:54:55.123123'
DECLARE @EndDateTime TimeStamp -- DateTime
SET     @EndDateTime = TIMESTAMP '2020-02-29 21:54:55.123123'
DECLARE @PreNotification Int64
SET     @PreNotification = 6048000000000
DECLARE @PreNotification2 IntervalDS -- Object
SET     @PreNotification2 = 05:33:20
DECLARE @PreNotification3 IntervalDS -- Object
SET     @PreNotification3 = 05:33:20
DECLARE @StrField TimeStamp -- DateTime
SET     @StrField = TIMESTAMP '2020-02-29 00:00:00.000000'
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
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-02-18 20:29:35.169186'
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2024-02-18 00:00:00.000000'

SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status"
FROM
	"Common_Topology_Locations" t
WHERE
	(t."Status" <> 'New' OR t."Status" IS NULL) AND
	(t."Status" <> 'Completed' OR t."Status" IS NULL) AND
	t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND < :UtcNow AND
	Trunc(t."StartDateTime", 'DD') < :Date_1

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

