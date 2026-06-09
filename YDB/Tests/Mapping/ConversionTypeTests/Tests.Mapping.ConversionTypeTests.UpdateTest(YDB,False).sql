-- YDB Ydb
DECLARE $Data Text(9) -- String
SET     $Data = '***III***'u
DECLARE $ID Int32
SET     $ID = 3

UPDATE
	TrimTestTable
SET
	`Data` = $Data
WHERE
	TrimTestTable.ID = $ID

-- YDB Ydb
DECLARE $Data Text(9) -- String
SET     $Data = '***OOO***'u

UPDATE
	TrimTestTable
SET
	`Data` = $Data
WHERE
	TrimTestTable.`Data` = '***XXX***'u

-- YDB Ydb
DECLARE $Data Text(9) -- String
SET     $Data = '***SSS***'u
DECLARE $p Text(9) -- String
SET     $p = '***HHH***'u

UPDATE
	TrimTestTable
SET
	`Data` = $Data
WHERE
	TrimTestTable.`Data` = $p

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

