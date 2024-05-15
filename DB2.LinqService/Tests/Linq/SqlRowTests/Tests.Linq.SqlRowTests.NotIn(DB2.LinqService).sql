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
	("i"."One", "i"."Two") <> (1, "i"."One" * 2)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Three") <> ("i"."One", "i"."One" * 2, "i"."Four" - 1) AND
	("i"."One", "i"."Two", "i"."Three") <> (0, 7, 9) AND
	("i"."One", "i"."Two", "i"."Three") <> (NULL, -1, "i"."Four")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Three", "i"."Four") <> ("i"."One", "i"."One" * 2, "i"."Four" - 1) AND
	("i"."One", "i"."Three", "i"."Four") <> (0, 7, 9) AND
	("i"."One", "i"."Three", "i"."Four") <> (NULL, 2, "i"."Four")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One", "i"."Two", "i"."Four") <> ("i"."One", "i"."One" * 2, "i"."Four" - 1) AND
	("i"."One", "i"."Two", "i"."Four") <> (0, 7, 9) AND
	("i"."One", "i"."Two", "i"."Four") <> (NULL, 2, "i"."Four")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Nil", "i"."Two", "i"."Four") <> ("i"."One", "i"."One" * 2, "i"."Four" - 1) AND
	("i"."Nil", "i"."Two", "i"."Four") <> (0, 7, 9) AND
	("i"."Nil", "i"."Two", "i"."Four") <> (NULL, 2, "i"."Four")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
END

