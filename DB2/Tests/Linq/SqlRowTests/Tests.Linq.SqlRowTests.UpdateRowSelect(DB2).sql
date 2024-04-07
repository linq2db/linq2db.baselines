BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Ints"
		(
			"One"   Int NOT NULL,
			"Two"   Int NOT NULL,
			"Three" Int NOT NULL,
			"Four"  Int NOT NULL,
			"Five"  Int NOT NULL,
			"Nil"   Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
VALUES
(1,2,3,4,5,NULL),
(10,20,30,40,50,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Ints"
SET
	"Ints"."One" = "Ints"."Two" * 5,
	("Ints"."Two", "Ints"."Three") = (
		SELECT
			"Ints"."Two" * 10,
			"j"."Three" * 100
		FROM
			"Ints" "j"
		WHERE
			"j"."One" = 1
	),
	("Ints"."Four", "Ints"."Nil") = (
		SELECT
			"Ints"."One" * "Ints"."Four",
			600
		FROM SYSIBM.SYSDUMMY1
	)
WHERE
	"Ints"."One" = 10

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."One",
	"t1"."Two",
	"t1"."Three",
	"t1"."Four",
	"t1"."Five",
	"t1"."Nil"
FROM
	"Ints" "t1"
ORDER BY
	"t1"."One"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
END

