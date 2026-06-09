-- YDB Ydb

UPDATE
	TrimTestTable
SET
	`Data` = '***III***'u
WHERE
	TrimTestTable.ID = 3

-- YDB Ydb

UPDATE
	TrimTestTable
SET
	`Data` = '***OOO***'u
WHERE
	TrimTestTable.`Data` = '***XXX***'u

-- YDB Ydb

UPDATE
	TrimTestTable
SET
	`Data` = '***SSS***'u
WHERE
	TrimTestTable.`Data` = '***HHH***'u

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

