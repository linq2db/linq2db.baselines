-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 10
DECLARE $TimeStamp Timestamp -- DateTime2
SET     $TimeStamp = Timestamp('2020-02-29T17:54:55.123123Z')

INSERT INTO Issue1110TB
(
	Id,
	`TimeStamp`
)
VALUES
(
	$Id,
	$TimeStamp
)

