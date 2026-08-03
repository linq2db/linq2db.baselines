-- DuckDB
SELECT
	row_1.Id,
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 864000000000)) // 864000000000 AS INTEGER),
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 36000000000)) // 36000000000 % 24 AS INTEGER),
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 600000000)) // 600000000 % 60 AS INTEGER),
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 10000000)) // 10000000 % 60 AS INTEGER),
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 10000)) // 10000 % 1000 AS INTEGER),
	CAST(row_1.PreNotification AS BIGINT),
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 864000000000,
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 36000000000,
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 600000000,
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 10000000,
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 10000,
	CAST((CAST(row_1.PreNotification AS BIGINT) - (CAST(row_1.PreNotification AS BIGINT) % 10)) // 10 % 1000 AS INTEGER),
	CAST(CAST(row_1.PreNotification AS BIGINT) * 100 % 1000 AS INTEGER),
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) / 10,
	CAST(CAST(row_1.PreNotification AS BIGINT) AS DOUBLE) * 100
FROM
	Common_Topology_Locations row_1
ORDER BY
	row_1.Id

