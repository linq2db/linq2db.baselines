-- YDB Ydb

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
SELECT
	t1.ID + 1 as ID,
	'***HHH***'u as `Data`
FROM
	TrimTestTable t1
RETURNING
	ID,
	`Data`

-- YDB Ydb

SELECT
	r.ID as ID,
	r.`Data` as Data_1
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- YDB Ydb

SELECT
	r.ID as ID,
	r.`Data` as Data_1
FROM
	TrimTestTable r
ORDER BY
	r.ID

