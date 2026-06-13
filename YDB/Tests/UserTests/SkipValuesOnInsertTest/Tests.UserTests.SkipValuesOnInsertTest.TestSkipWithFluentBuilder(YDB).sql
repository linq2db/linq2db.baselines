-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text -- String
SET     $Name = NULL

INSERT INTO PR_1598_Insert_Fluent_Table
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
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

