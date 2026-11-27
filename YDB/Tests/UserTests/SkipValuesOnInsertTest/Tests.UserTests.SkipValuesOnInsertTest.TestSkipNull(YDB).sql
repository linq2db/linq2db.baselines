-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(5) -- String
SET     Name = 'Tommy'u

INSERT INTO SkipOnInsertNulls
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
	SkipOnInsertNulls t
WHERE
	t.Id = 1
LIMIT 1

