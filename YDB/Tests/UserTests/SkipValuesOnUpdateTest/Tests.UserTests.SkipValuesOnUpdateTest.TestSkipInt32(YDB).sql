-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(5) -- String
SET     $Name = 'Smith'u
DECLARE $Age Int32
SET     $Age = 2

INSERT INTO PR_1598_Update_Table
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
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(6) -- String
SET     $Name = 'Franki'u
DECLARE $Age Int32
SET     $Age = 15
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Table
SET
	Name = $Name,
	Age = $Age
WHERE
	PR_1598_Update_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(4) -- String
SET     $Name = 'Jack'u
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Table
SET
	Name = $Name
WHERE
	PR_1598_Update_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

