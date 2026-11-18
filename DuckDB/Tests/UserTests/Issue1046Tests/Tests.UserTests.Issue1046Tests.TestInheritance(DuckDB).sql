-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $TargetName NVarChar(12) -- String
SET     $TargetName = 'bda.Requests'
DECLARE $BdaValue NVarChar(9) -- String
SET     $BdaValue = 'Bda value'

INSERT INTO "Task"
(
	Id,
	TargetName,
	BdaValue
)
VALUES
(
	$Id,
	$TargetName,
	$BdaValue
)

-- DuckDB
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	"Task" p

-- DuckDB
SELECT
	p.BdaValue
FROM
	"Task" p

