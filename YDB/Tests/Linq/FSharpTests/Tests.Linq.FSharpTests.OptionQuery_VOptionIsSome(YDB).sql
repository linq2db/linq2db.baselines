-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(1) -- String
SET     $Name = 'a'u

INSERT INTO VOptRow
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text -- String
SET     $Name = NULL

INSERT INTO VOptRow
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
)

-- YDB Ydb
SELECT
	x.Id as Id,
	x.Name as Name
FROM
	VOptRow x
WHERE
	x.Name IS NOT NULL

