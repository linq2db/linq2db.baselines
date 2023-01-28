BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTempTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestTempTable
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL
)

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TempTable
(
	Id,
	"Value"
)
SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TempTable
(
	Id,
	"Value"
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TempTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTempTable

