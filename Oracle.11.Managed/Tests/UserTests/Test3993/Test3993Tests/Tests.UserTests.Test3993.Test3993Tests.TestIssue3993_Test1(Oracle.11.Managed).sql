-- Oracle.11.Managed Oracle11
SELECT
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7)
FROM
	"Common_Topology_Locations" t

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

-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 00:05:00

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
	x."StartDateTime2" + :p > SYS_EXTRACT_UTC(SYSTIMESTAMP)

-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 36500.00:00:00

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
	x."StartDateTime2" + :p > SYS_EXTRACT_UTC(SYSTIMESTAMP)

-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(x."PreNotification" AS Number(19)) AS Float) / 10000D,
	CAST(CAST(x."PreNotification" AS Number(19)) AS Float) / 10000000D
FROM
	"Common_Topology_Locations" x
WHERE
	CAST(CAST(x."PreNotification" AS Number(19)) AS Float) / 10000000D < CAST(CAST(x."PreNotification" AS Number(19)) AS Float) / 10000D

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime2" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime5" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime6" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime7" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime8",
	x."NotificationDateTime9",
	x."Day_1"
FROM
	(
		SELECT
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime8",
			t."StartDateTime",
			t."PreNotification",
			t."StartDateTime" + (-1D * (CAST(CAST(t."PreNotification" AS Number(19)) AS Float) / 10000D)) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification2") * 86400 + EXTRACT(HOUR FROM t."PreNotification2") * 3600 + EXTRACT(MINUTE FROM t."PreNotification2") * 60 + EXTRACT(SECOND FROM t."PreNotification2"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime2",
			t."StartDateTime" + (-1D * ((EXTRACT(DAY FROM t."PreNotification3") * 86400 + EXTRACT(HOUR FROM t."PreNotification3") * 3600 + EXTRACT(MINUTE FROM t."PreNotification3") * 60 + EXTRACT(SECOND FROM t."PreNotification3"))) * 1000) * INTERVAL '0.001' SECOND(1,3) as "NotificationDateTime3",
			t."StartDateTime" - t."PreNotification3" as "NotificationDateTime4",
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime5",
			t."StartDateTime" + ((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime6",
			t."StartDateTime2" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime7",
			t."StartDateTime2" - t."PreNotification3" as "NotificationDateTime9",
			EXTRACT(DAY FROM t."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."NotificationDateTime8" < TIMESTAMP '2020-02-29 17:54:55.123100'

-- Oracle.11.Managed Oracle11
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
	x."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.123123'

-- Oracle.11.Managed Oracle11
SELECT
	CAST(t."EndDateTime" AS TIMESTAMP) - CAST(t."StartDateTime" AS TIMESTAMP)
FROM
	"Common_Topology_Locations" t

-- Oracle.11.Managed Oracle11
SELECT
	CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)
FROM
	"Common_Topology_Locations" x

-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 05:00:00

SELECT
	x."diff"
FROM
	(
		SELECT
			CAST(t."EndDateTime" AS TIMESTAMP) - CAST(t."StartDateTime" AS TIMESTAMP) as "diff"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."diff" < :p

-- Oracle.11.Managed Oracle11
SELECT
	CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)
FROM
	"Common_Topology_Locations" x
WHERE
	((EXTRACT(DAY FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 86400 + EXTRACT(HOUR FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 3600 + EXTRACT(MINUTE FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 60 + EXTRACT(SECOND FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)))) / 3600 < 5D

-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 02:00:00

SELECT
	x."diff"
FROM
	(
		SELECT
			CAST(t."EndDateTime" AS TIMESTAMP) - CAST(t."StartDateTime" AS TIMESTAMP) as "diff"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	x."diff" < :p

-- Oracle.11.Managed Oracle11
SELECT
	CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)
FROM
	"Common_Topology_Locations" x
WHERE
	((EXTRACT(DAY FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 86400 + EXTRACT(HOUR FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 3600 + EXTRACT(MINUTE FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)) * 60 + EXTRACT(SECOND FROM CAST(x."EndDateTime" AS TIMESTAMP) - CAST(x."StartDateTime" AS TIMESTAMP)))) / 3600 < 2D

