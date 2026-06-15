-- YDB Ydb

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
VALUES
(
	1,
	'***OOO***'u
)

-- YDB Ydb

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
VALUES
(
	2,
	'***HHH***'u
)

-- YDB Ydb

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
VALUES
(
	3,
	'***VVV***'u
)

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

