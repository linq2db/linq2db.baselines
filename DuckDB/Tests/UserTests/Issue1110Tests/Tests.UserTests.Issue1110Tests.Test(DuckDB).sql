-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 10
DECLARE $TimeStamp  -- DateTime2
SET     $TimeStamp = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO Issue1110TB
(
	Id,
	"TimeStamp"
)
VALUES
(
	$Id,
	$TimeStamp
)

