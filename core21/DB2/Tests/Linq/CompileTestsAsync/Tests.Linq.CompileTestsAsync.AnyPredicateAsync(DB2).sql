﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "AsyncDataTable"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "AsyncDataTable"
(
	"Id"
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"AsyncDataTable" "c_1"
			WHERE
				"c_1"."Id" = @Id
		)
			THEN 1
		ELSE 0
	END
FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "AsyncDataTable"';
END

