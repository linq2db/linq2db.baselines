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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = 200000000000
DECLARE @:p2 IntervalDS -- Object
SET     @:p2 = 05:33:20
DECLARE @:p3 IntervalDS -- Object
SET     @:p3 = 05:33:20
DECLARE @:p4 Int64
SET     @:p4 = 6048000000000
DECLARE @:p5 IntervalDS -- Object
SET     @:p5 = 05:33:20
DECLARE @:p6 IntervalDS -- Object
SET     @:p6 = 05:33:20

INSERT ALL
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField", "Status") VALUES (TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 21:54:55.123123',:p1,:p2,:p3,TIMESTAMP '2020-02-29 00:00:00.000000',NULL)
	INTO "Common_Topology_Locations" ("StartDateTime", "StartDateTime2", "EndDateTime", "PreNotification", "PreNotification2", "PreNotification3", "StrField", "Status") VALUES (TIMESTAMP '2023-10-17 09:40:23.000000',TIMESTAMP '2020-02-29 17:54:55.123123',TIMESTAMP '2020-02-29 21:54:55.123123',:p4,:p5,:p6,TIMESTAMP '2020-02-29 00:00:00.000000',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @UtcNow TimeStamp -- DateTime
SET     @UtcNow = TIMESTAMP '2024-02-18 08:53:52.048646'
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
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Common_Topology_Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

