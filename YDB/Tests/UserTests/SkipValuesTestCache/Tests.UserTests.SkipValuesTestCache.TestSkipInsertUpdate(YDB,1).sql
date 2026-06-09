-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u

INSERT INTO PR_1598_Insert_Table_Cache
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
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	PR_1598_Insert_Table_Cache
SET
	Name = $Name
WHERE
	PR_1598_Insert_Table_Cache.Id = $Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

