-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $SomeDateTimeOffset  -- DateTimeOffset
SET     $SomeDateTimeOffset = '2019-08-08 08:08:08+00'::TIMESTAMPTZ
DECLARE $SomeNullableDateTimeOffset  -- DateTimeOffset
SET     $SomeNullableDateTimeOffset = '2019-08-08 08:08:08+00'::TIMESTAMPTZ

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset,
	SomeNullableDateTimeOffset
)
VALUES
(
	$Id,
	$SomeDateTimeOffset,
	$SomeNullableDateTimeOffset
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $SomeDateTimeOffset  -- DateTimeOffset
SET     $SomeDateTimeOffset = '2019-08-08 08:08:08+00'::TIMESTAMPTZ

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset
)
VALUES
(
	$Id,
	$SomeDateTimeOffset
)

-- DuckDB
DECLARE $clientSideIn  -- DateTimeOffset
SET     $clientSideIn = '2019-08-08 08:08:18+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r.SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	$clientSideIn <> r.SomeNullableDateTimeOffset OR r.SomeNullableDateTimeOffset IS NULL

