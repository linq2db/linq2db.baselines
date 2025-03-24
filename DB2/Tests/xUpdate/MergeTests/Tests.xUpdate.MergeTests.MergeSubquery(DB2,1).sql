﻿BeforeExecute
BeginTransaction
BeforeExecute
--  DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."MergeTemp"
(
	ID     Int          NOT NULL,
	"Name" NVarChar(20)     NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO SESSION."MergeTemp"
(
	ID,
	"Name"
)
VALUES
(1,'John')

BeforeExecute
--  DB2 DB2.LUW DB2LUW

MERGE INTO SESSION."MergeTemp" "t1"
USING (SELECT (
	SELECT
		"t".ID
	FROM
		SESSION."MergeTemp" "t"
	WHERE
		"t"."Name" = 'John'
) AS ID FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1".ID = "s".ID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		ID = "t1".ID,
		"Name" = "t1"."Name"
WHEN NOT MATCHED THEN
	INSERT
	(
		ID,
		"Name"
	)
	VALUES
	(
		(
			SELECT
				"t".ID
			FROM
				SESSION."MergeTemp" "t"
			WHERE
				"t"."Name" = 'John'
		),
		'John II'
	)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."MergeTemp"';
END

