-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $SomeDateTimeOffset NVarChar(32) -- String
SET     $SomeDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'
DECLARE $SomeNullableDateTimeOffset NVarChar(32) -- String
SET     $SomeNullableDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset,
	SomeNullableDateTimeOffset
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($SomeDateTimeOffset AS TIMESTAMPTZ),
	CAST($SomeNullableDateTimeOffset AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $SomeDateTimeOffset NVarChar(32) -- String
SET     $SomeDateTimeOffset = '2019-08-08 08:08:08.000000+00:00'

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($SomeDateTimeOffset AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $interval  -- Int32
SET     $interval = 10
DECLARE $clientSideIn NVarChar(32) -- String
SET     $clientSideIn = '2019-08-08 08:08:18.000000+00:00'

SELECT
	r.Id,
	r.SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	r.SomeDateTimeOffset + CAST(CAST($interval AS INTEGER) * Interval '1 Second' AS INTERVAL) >= CAST($clientSideIn AS TIMESTAMPTZ)

