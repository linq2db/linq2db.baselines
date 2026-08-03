-- DuckDB
SELECT
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t

-- DuckDB
SELECT
	t1.StartDateTime,
	t1.StartDateTime2,
	t1.EndDateTime,
	t1.PreNotification,
	t1.PreNotification2,
	t1.PreNotification3,
	t1.StrField,
	t1.Status
FROM
	Common_Topology_Locations t1

-- DuckDB
SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	EXTRACT(year FROM x.StartDateTime2) = 2023

-- DuckDB
DECLARE $p  -- Int64
SET     $p = 3000000000

SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	x.StartDateTime2 + ((CAST($p AS BIGINT) - (CAST($p AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST($p AS BIGINT) % 864000000000) - ((CAST($p AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' > '2026-08-03 19:02:23.773082'::TIMESTAMP

-- DuckDB
DECLARE $p  -- Int64
SET     $p = 31536000000000000

SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	x.StartDateTime2 + ((CAST($p AS BIGINT) - (CAST($p AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST($p AS BIGINT) % 864000000000) - ((CAST($p AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' > '2026-08-03 19:02:23.778586'::TIMESTAMP

-- DuckDB
SELECT
	CAST(CAST(x.PreNotification AS BIGINT) AS DOUBLE) / 10000,
	CAST(CAST(x.PreNotification AS BIGINT) AS DOUBLE) / 10000000
FROM
	Common_Topology_Locations x
WHERE
	CAST(CAST(x.PreNotification AS BIGINT) AS DOUBLE) / 10000000 < CAST(CAST(x.PreNotification AS BIGINT) AS DOUBLE) / 10000

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime2 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime4 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime5 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime6 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime7 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			t.StartDateTime2 + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime8,
			t.StartDateTime,
			t.PreNotification,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification2 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime2,
			t.StartDateTime + (-1 * (CAST(CAST(t.PreNotification3 AS BIGINT) AS DOUBLE) / 10000)) * Interval '1 Millisecond' as NotificationDateTime3,
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime5,
			t.StartDateTime + ((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(t.PreNotification AS BIGINT) % 864000000000) - ((CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime6,
			t.StartDateTime2 + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime7,
			t.StartDateTime2 + ((CAST(-t.PreNotification3 AS BIGINT) - (CAST(-t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) - ((CAST(-t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime9,
			EXTRACT(day FROM t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime8 < '2020-02-29 17:54:55.123100'::TIMESTAMP

-- DuckDB
SELECT
	x.NotificationDateTime4
FROM
	(
		SELECT
			t.StartDateTime + -((CAST(t.PreNotification3 AS BIGINT) - (CAST(t.PreNotification3 AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification3 AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime4
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime4 < '2020-02-29 17:54:55.123123'::TIMESTAMP

-- DuckDB
SELECT
	date_diff('microsecond', t.StartDateTime, t.EndDateTime) * 10
FROM
	Common_Topology_Locations t

-- DuckDB
SELECT
	date_diff('microsecond', x.StartDateTime, x.EndDateTime) * 10
FROM
	Common_Topology_Locations x

-- DuckDB
DECLARE $p  -- Int64
SET     $p = 180000000000

SELECT
	x.diff
FROM
	(
		SELECT
			date_diff('microsecond', t.StartDateTime, t.EndDateTime) * 10 as diff
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.diff < $p

-- DuckDB
SELECT
	date_diff('microsecond', x.StartDateTime, x.EndDateTime) * 10
FROM
	Common_Topology_Locations x
WHERE
	CAST(CAST(date_diff('microsecond', x.StartDateTime, x.EndDateTime) * 10 AS BIGINT) AS DOUBLE) / 36000000000 < 5

-- DuckDB
DECLARE $p  -- Int64
SET     $p = 72000000000

SELECT
	x.diff
FROM
	(
		SELECT
			date_diff('microsecond', t.StartDateTime, t.EndDateTime) * 10 as diff
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.diff < $p

-- DuckDB
SELECT
	date_diff('microsecond', x.StartDateTime, x.EndDateTime) * 10
FROM
	Common_Topology_Locations x
WHERE
	CAST(CAST(date_diff('microsecond', x.StartDateTime, x.EndDateTime) * 10 AS BIGINT) AS DOUBLE) / 36000000000 < 2

