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
DECLARE @One Integer(4) -- Int32
SET     @One = 1
DECLARE @Two Integer(4) -- Int32
SET     @Two = 2
DECLARE @Three Integer(4) -- Int32
SET     @Three = 3
DECLARE @Four Integer(4) -- Int32
SET     @Four = 4
DECLARE @Five Integer(4) -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

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
(
	@One,
	@Two,
	@Three,
	@Four,
	@Five,
	@Nil
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two") NOT BETWEEN ("i"."One", "i"."One" * 2) AND ("i"."One", "i"."One" + "i"."One")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Three") NOT BETWEEN ("i"."One", "i"."One") AND ("i"."One", "i"."Four")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two") NOT BETWEEN ("i"."One", "i"."Three") AND ("i"."One", "i"."Two")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Five") NOT BETWEEN ("i"."One", "i"."One") AND ("i"."Three", "i"."Two")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Five") NOT BETWEEN ("i"."One", "i"."One") AND ("i"."Two", "i"."Two")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Nil") NOT BETWEEN ("i"."One", "i"."One") AND ("i"."Three", "i"."One")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Nil") NOT BETWEEN ("i"."Two", "i"."One") AND ("i"."Two", "i"."Three")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Five") NOT BETWEEN ("i"."One", "i"."Nil") AND ("i"."Three", "i"."Nil")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Nil") NOT BETWEEN ("i"."One", "i"."Nil") AND ("i"."Three", "i"."Nil")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two", "i"."Two") NOT BETWEEN ("i"."Nil", "i"."One") AND ("i"."Three", "i"."Five")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
END

