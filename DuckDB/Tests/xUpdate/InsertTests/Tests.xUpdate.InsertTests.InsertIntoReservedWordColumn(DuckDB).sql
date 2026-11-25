-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 10
DECLARE $TimeStamp TIMESTAMP -- DateTime2
SET     $TimeStamp = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO ReservedWordColumn
(
	Id,
	"TimeStamp"
)
VALUES
(
	$Id,
	$TimeStamp
)

