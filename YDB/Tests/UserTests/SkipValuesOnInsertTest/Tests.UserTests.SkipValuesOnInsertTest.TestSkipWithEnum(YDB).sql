-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(3) -- String
SET     $Name = 'Max'u
DECLARE $Age Int32
SET     $Age = 20
DECLARE $Gender Text(4) -- String
SET     $Gender = 'Male'u

INSERT INTO PR_1598_Insert_Enum_Table
(
	Id,
	Name,
	Age,
	Gender
)
VALUES
(
	$Id,
	$Name,
	$Age,
	$Gender
)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age,
	t.Gender as Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text(5) -- String
SET     $Name = 'Jenny'u
DECLARE $Age Int32
SET     $Age = 25

INSERT INTO PR_1598_Insert_Enum_Table
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
	t.Age as Age,
	t.Gender as Gender
FROM
	PR_1598_Insert_Enum_Table t
WHERE
	t.Id = 2
LIMIT 1

