-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $SomeDateTimeOffset Timestamp -- DateTime2
SET     $SomeDateTimeOffset = Timestamp('2019-08-08T08:08:08.000000Z')
DECLARE $SomeNullableDateTimeOffset Timestamp -- DateTime2
SET     $SomeNullableDateTimeOffset = Timestamp('2019-08-08T08:08:08.000000Z')

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

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $SomeDateTimeOffset Timestamp -- DateTime2
SET     $SomeDateTimeOffset = Timestamp('2019-08-08T08:08:08.000000Z')

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

-- YDB Ydb
DECLARE $interval Int32
SET     $interval = 10
DECLARE $clientSideIn Timestamp -- DateTime2
SET     $clientSideIn = Timestamp('2019-08-08T08:08:18.000000Z')

SELECT
	r.Id as Id,
	r.SomeDateTimeOffset as SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset as SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	r.SomeDateTimeOffset + DateTime::IntervalFromSeconds($interval) >= $clientSideIn

