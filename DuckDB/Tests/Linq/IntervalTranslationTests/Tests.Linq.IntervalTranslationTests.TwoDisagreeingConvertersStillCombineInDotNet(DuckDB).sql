-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 5400
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 54000000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 54000000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 5400

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- DuckDB
DECLARE $PlainValue BIGINT -- Int64
SET     $PlainValue = 1800

SELECT
	r.Undeclared,
	r.UndeclaredSeconds,
	r.Undeclared + r.Undeclared,
	r.InSeconds + r.InSeconds,
	r.UndeclaredSeconds + $PlainValue
FROM
	DurationRow r
LIMIT 2

