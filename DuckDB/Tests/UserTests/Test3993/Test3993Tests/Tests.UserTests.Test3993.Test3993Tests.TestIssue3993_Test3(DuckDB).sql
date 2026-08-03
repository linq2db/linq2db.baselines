-- DuckDB
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t
LIMIT 1

-- DuckDB
SELECT
	t.StartDateTime,
	t.PreNotification,
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t
LIMIT 1

-- DuckDB
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t
WHERE
	EXTRACT(hour FROM (t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond')) = 13
LIMIT 1

-- DuckDB
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t
WHERE
	EXTRACT(minute FROM (t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond')) = 51
LIMIT 1

-- DuckDB
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond'
FROM
	Common_Topology_Locations t
WHERE
	EXTRACT(second FROM (t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond')) >= 52 AND
	EXTRACT(second FROM (t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond')) <= 54
LIMIT 1

