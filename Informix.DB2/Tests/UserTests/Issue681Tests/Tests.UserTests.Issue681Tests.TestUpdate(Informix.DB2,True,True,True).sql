﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	testdb@informix:informix.Issue681Table t1
SET
	"Value" = @Value
WHERE
	t1.ID = @ID

