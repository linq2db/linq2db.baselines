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
DECLARE @StartDateTime TimeStamp -- DateTime
SET     @StartDateTime = TIMESTAMP '2020-02-29 17:54:55.123123'
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	x."StartDateTime",
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'HH24')) = 13
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'MI')) = 51
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'SS')) = 53
FETCH NEXT :take ROWS ONLY

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

