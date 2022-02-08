﻿BeforeExecute
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
(1,2,3,4,5,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One", "i"."Two", "i"."Three") = ("i"."One", "i"."One" * 2, "i"."Four" - 1) OR ("i"."One", "i"."Two", "i"."Three") = (0, 7, 9) OR ("i"."One", "i"."Two", "i"."Three") = (NULL, -1, "i"."Four"))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One", "i"."Three", "i"."Four") = ("i"."One", "i"."One" * 2, "i"."Four" - 1) OR ("i"."One", "i"."Three", "i"."Four") = (0, 7, 9) OR ("i"."One", "i"."Three", "i"."Four") = (NULL, 2, "i"."Four"))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One", "i"."Two", "i"."Four") = ("i"."One", "i"."One" * 2, "i"."Four" - 1) OR ("i"."One", "i"."Two", "i"."Four") = (0, 7, 9) OR ("i"."One", "i"."Two", "i"."Four") = (NULL, 2, "i"."Four"))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Nil", "i"."Two", "i"."Four") = ("i"."One", "i"."One" * 2, "i"."Four" - 1) OR ("i"."Nil", "i"."Two", "i"."Four") = (0, 7, 9) OR ("i"."Nil", "i"."Two", "i"."Four") = (NULL, 2, "i"."Four"))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
END

