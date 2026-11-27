-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text -- String
SET     Name = NULL

INSERT INTO SkipOnInsertFluent
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
	SkipOnInsertFluent t
WHERE
	t.Id = 1
LIMIT 1

