﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

/* My Test */
MERGE INTO "TestTable" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Fd" = 2
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Fd"
	)
	VALUES
	(
		1,
		2
	)

