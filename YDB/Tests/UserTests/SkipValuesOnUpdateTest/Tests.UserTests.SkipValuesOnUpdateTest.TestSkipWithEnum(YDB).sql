-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(3) -- String
SET     $Name = 'Max'u
DECLARE $Age Int32
SET     $Age = 20
DECLARE $Gender Text(6) -- String
SET     $Gender = 'Female'u

INSERT INTO PR_1598_Update_Enum_Table
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
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(4) -- String
SET     $Name = 'Jack'u
DECLARE $Age Int32
SET     $Age = 2
DECLARE $Gender Text(4) -- String
SET     $Gender = 'Male'u
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	Name = $Name,
	Age = $Age,
	Gender = $Gender
WHERE
	PR_1598_Update_Enum_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age,
	t.Gender as Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(8) -- String
SET     $Name = 'Francine'u
DECLARE $Age Int32
SET     $Age = 20
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Enum_Table
SET
	Name = $Name,
	Age = $Age
WHERE
	PR_1598_Update_Enum_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age,
	t.Gender as Gender
FROM
	PR_1598_Update_Enum_Table t
WHERE
	t.Id = 1
LIMIT 1

