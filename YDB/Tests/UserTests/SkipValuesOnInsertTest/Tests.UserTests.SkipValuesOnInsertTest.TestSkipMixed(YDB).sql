-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(5) -- String
SET     $Name = 'Jason'u
DECLARE $Age Int32
SET     $Age = 20

INSERT INTO PR_1598_Mixed_Table
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
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Age Int32
SET     $Age = 20
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Mixed_Table
SET
	Age = $Age
WHERE
	PR_1598_Mixed_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Age Int32
SET     $Age = 25

INSERT INTO PR_1598_Mixed_Table
(
	Id,
	Age
)
VALUES
(
	$Id,
	$Age
)

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(5) -- String
SET     $Name = 'Jessy'u
DECLARE $Age Int32
SET     $Age = 25
DECLARE $Id Int32
SET     $Id = 2

UPDATE
	PR_1598_Mixed_Table
SET
	Name = $Name,
	Age = $Age
WHERE
	PR_1598_Mixed_Table.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Mixed_Table t
WHERE
	t.Id = 2
LIMIT 1

