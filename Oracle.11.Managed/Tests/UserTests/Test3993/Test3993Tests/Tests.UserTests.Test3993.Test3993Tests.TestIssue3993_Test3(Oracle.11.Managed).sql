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
SET     @:p1 = 145820000000
DECLARE @:p2 IntervalDS -- Object
SET     @:p2 = 00:00:00

INSERT ALL
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField", "Status") VALUES (TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '0001-01-01 00:00:00.000000',NULL,:p1,NULL,:p2,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
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
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x."StartDateTime",
	x."PreNotification"
FROM
	"Common_Topology_Locations" x
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'HH24')) = 13 AND
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'MI')) = 51 AND
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
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
	To_Number(To_Char((t."StartDateTime" + (t."PreNotification" * -1 / 10000) * INTERVAL '0.001' SECOND), 'SS')) = 53 AND
	ROWNUM <= :take

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

