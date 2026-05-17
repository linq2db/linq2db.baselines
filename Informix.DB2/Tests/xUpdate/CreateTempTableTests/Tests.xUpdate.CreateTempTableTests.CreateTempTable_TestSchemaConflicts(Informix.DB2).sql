-- Informix.DB2 Informix

INSERT INTO TestTempTable
(
	Id,
	"Value"
)
VALUES
(
	1,
	'value'
)

-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int           NOT NULL,
	Renamed NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

-- Informix.DB2 Informix

INSERT INTO TempTable
(
	Id,
	Renamed
)
SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1

-- Informix.DB2 Informix

INSERT INTO TestTempTable
(
	Id,
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- Informix.DB2 Informix

INSERT INTO TempTable
(
	Id,
	Renamed
)
VALUES
(
	2,
	'renamed 2'
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

