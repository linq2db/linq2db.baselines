-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Code Text(10) -- String
SET     $Code = 'GrandChild'u
DECLARE $Name Text(3) -- String
SET     $Name = 'Tom'u
DECLARE $Surname Text(5) -- String
SET     $Surname = 'Black'u

INSERT INTO Issue4460Table
(
	Id,
	Code,
	Name,
	Surname
)
VALUES
(
	$Id,
	$Code,
	$Name,
	$Surname
)

-- YDB Ydb

SELECT
	t1.Code as Code,
	t1.Id as Id,
	t1.Name as Name,
	t1.Surname as Surname
FROM
	Issue4460Table t1
WHERE
	t1.Code = 'GrandChild'u

