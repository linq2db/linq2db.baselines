﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

MERGE INTO DB2INST1."Issue681Table" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@Value AS Int)
	)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

MERGE INTO DB2INST1."Issue681Table" "t1"
USING (SELECT CAST(@ID AS Int) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Value" = CAST(@Value AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Value"
	)
	VALUES
	(
		CAST(@ID AS Int),
		CAST(@Value AS Int)
	)

