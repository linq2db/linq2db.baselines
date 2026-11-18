-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Age INTEGER -- Int32
SET     $Age = 14

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Age
)
VALUES
(
	$Id,
	$Age
)

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Age INTEGER -- Int32
SET     $Age = 15

INSERT INTO PR_1598_Insert_Table
(
	Id,
	Age
)
VALUES
(
	$Id,
	$Age
)

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table t
WHERE
	t.Id = 2
LIMIT 1

