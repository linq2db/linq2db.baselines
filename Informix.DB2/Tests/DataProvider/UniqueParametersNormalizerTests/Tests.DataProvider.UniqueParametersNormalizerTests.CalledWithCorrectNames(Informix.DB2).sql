BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS table1
(
	Id     Int           NOT NULL,
	Field1 NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS table2
(
	Table1Id Int           NOT NULL,
	Field2   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS table3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS table3
(
	Table1Id Int           NOT NULL,
	Field3   NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @search VarChar(4) -- String
SET     @search = 'test'

SELECT
	row1.Id
FROM
	table1 row1
		INNER JOIN table2 row2 ON row1.Id = row2.Table1Id
WHERE
	row2.Field2 LIKE 'test%' ESCAPE '~'
UNION
SELECT
	row1_1.Id
FROM
	table1 row1_1
		INNER JOIN table3 row3 ON row1_1.Id = row3.Table1Id
WHERE
	row3.Field3 = @search AND row3.Field3 IS NOT NULL
UNION
SELECT
	row1_2.Id
FROM
	table1 row1_2
WHERE
	row1_2.Field1 LIKE 'test%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table3

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table1

