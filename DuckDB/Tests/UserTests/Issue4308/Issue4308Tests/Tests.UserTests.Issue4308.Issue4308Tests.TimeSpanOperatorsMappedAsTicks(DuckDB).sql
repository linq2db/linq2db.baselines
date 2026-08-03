-- DuckDB
SELECT
	t1.Id,
	t1.StartDateTime,
	t1.EndDateTime,
	t1.RequiredDateTime,
	t1.PreNotification,
	t1.RequiredInterval
FROM
	Common_Topology_Locations t1
LIMIT 2

-- DuckDB
SELECT
	row_1.StartDateTime + ((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(row_1.PreNotification AS BIGINT) % 864000000000) - ((CAST(row_1.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond',
	row_1.RequiredDateTime + ((CAST(row_1.RequiredInterval AS BIGINT) - (CAST(row_1.RequiredInterval AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(row_1.RequiredInterval AS BIGINT) % 864000000000) - ((CAST(row_1.RequiredInterval AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond',
	row_1.StartDateTime + ((CAST(row_1.RequiredInterval AS BIGINT) - (CAST(row_1.RequiredInterval AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(row_1.RequiredInterval AS BIGINT) % 864000000000) - ((CAST(row_1.RequiredInterval AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond',
	row_1.RequiredDateTime + ((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + (((CAST(row_1.PreNotification AS BIGINT) % 864000000000) - ((CAST(row_1.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond',
	row_1.StartDateTime + -((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(row_1.PreNotification AS BIGINT) % 864000000000) - (-(CAST(row_1.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond',
	-row_1.PreNotification,
	date_diff('microsecond', row_1.StartDateTime, row_1.EndDateTime) * 10,
	date_diff('microsecond', row_1.RequiredDateTime, row_1.EndDateTime) * 10,
	date_diff('microsecond', row_1.StartDateTime, row_1.RequiredDateTime) * 10
FROM
	Common_Topology_Locations row_1
LIMIT 2

