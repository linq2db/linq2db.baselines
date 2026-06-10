-- YDB Ydb
DECLARE $data Text -- String
SET     $data = NULL

INSERT INTO StringTestTable
(
	ID,
	`Data`
)
VALUES
(
	2,
	$data
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.`Data` as Data_1
FROM
	StringTestTable t
WHERE
	t.ID = 2
LIMIT 2

