-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $SomeDateTimeOffset TIMESTAMPTZ -- DateTimeOffset
SET     $SomeDateTimeOffset = '2019-08-08 08:08:08+00'::TIMESTAMPTZ
DECLARE $SomeNullableDateTimeOffset TIMESTAMPTZ -- DateTimeOffset
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
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $SomeDateTimeOffset TIMESTAMPTZ -- DateTimeOffset
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
DECLARE $clientSideIn TIMESTAMPTZ -- DateTimeOffset
SET     $clientSideIn = '2019-08-08 08:08:18+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r.SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	$clientSideIn <> r.SomeDateTimeOffset

