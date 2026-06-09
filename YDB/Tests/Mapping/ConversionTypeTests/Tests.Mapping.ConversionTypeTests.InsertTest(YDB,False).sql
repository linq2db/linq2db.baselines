-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Data Text(9) -- String
SET     $Data = '***OOO***'u

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
VALUES
(
	$ID,
	$Data
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 2
DECLARE $Data Text(9) -- String
SET     $Data = '***HHH***'u

INSERT INTO TrimTestTable
(
	ID,
	`Data`
)
VALUES
(
	$ID,
	$Data
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

