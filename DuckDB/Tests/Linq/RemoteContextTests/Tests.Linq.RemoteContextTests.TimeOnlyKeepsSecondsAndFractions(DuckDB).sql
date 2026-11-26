-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Time TIME -- Time
SET     $Time = '10:30:20'::TIME

INSERT INTO TimeOnlyRow
(
	Id,
	"Time"
)
VALUES
(
	$Id,
	$Time
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Time TIME -- Time
SET     $Time = '10:30:45.123456'::TIME

INSERT INTO TimeOnlyRow
(
	Id,
	"Time"
)
VALUES
(
	$Id,
	$Time
)

-- DuckDB
SELECT
	r."Time"
FROM
	TimeOnlyRow r
ORDER BY
	r.Id

-- DuckDB
DECLARE $late TIME -- Time
SET     $late = '10:30:45.123456'::TIME

SELECT
	r.Id
FROM
	TimeOnlyRow r
WHERE
	r."Time" = $late

