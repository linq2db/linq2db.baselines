-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $Age Int32
SET     $Age = 15

INSERT INTO PR_1598_SkipCustom_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	$Id,
	$Name,
	$Age
)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text(3) -- String
SET     $Name = 'Max'u

INSERT INTO PR_1598_SkipCustom_Table
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
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 2
LIMIT 1

