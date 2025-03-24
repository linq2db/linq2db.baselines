﻿BeforeExecute
--  Informix.DB2 Informix (asynchronously)
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
	row3.Field3 = @search
UNION
SELECT
	row1_2.Id
FROM
	table1 row1_2
WHERE
	row1_2.Field1 LIKE 'test%' ESCAPE '~'

BeforeExecute
--  Informix.DB2 Informix (asynchronously)
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
	row3.Field3 = @search
UNION
SELECT
	row1_2.Id
FROM
	table1 row1_2
WHERE
	row1_2.Field1 LIKE 'test%' ESCAPE '~'

BeforeExecute
--  Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table3

BeforeExecute
--  Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table2

BeforeExecute
--  Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS table1

