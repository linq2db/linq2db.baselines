﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	current server
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	TESTDB.DB2INST1."Issue681Table" "t1"
SET
	"Value" = @Value
WHERE
	"t1".ID = @ID

