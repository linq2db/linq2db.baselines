-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 10
DECLARE $TimeStamp NVarChar(26) -- String
SET     $TimeStamp = '2020-02-29 17:54:55.123123'

INSERT INTO Issue1110TB
(
	Id,
	"TimeStamp"
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($TimeStamp AS TIMESTAMP)
)

