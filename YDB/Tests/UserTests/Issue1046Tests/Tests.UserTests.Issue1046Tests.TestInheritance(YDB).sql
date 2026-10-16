-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $TargetName Text(12) -- String
SET     $TargetName = 'bda.Requests'u
DECLARE $BdaValue Text(9) -- String
SET     $BdaValue = 'Bda value'u

INSERT INTO `Task`
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

-- YDB Ydb
SELECT
	p.Id as Id,
	p.TargetName as TargetName,
	p.BdaValue as BdaValue
FROM
	`Task` p

-- YDB Ydb
SELECT
	p.BdaValue as BdaValue
FROM
	`Task` p

