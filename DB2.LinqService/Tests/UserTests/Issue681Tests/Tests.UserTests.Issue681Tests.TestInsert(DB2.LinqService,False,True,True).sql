BeforeExecute
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
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO TESTDB.DB2INST1."Issue681Table"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

