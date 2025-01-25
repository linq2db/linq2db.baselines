BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
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
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Ints" ("One", "Two", "Three", "Four", "Five", "Nil") VALUES (1,2,3,4,5,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	i."Two" >= i."One" * 2 AND i."Two" <= i."One" + i."One"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	i."Three" >= i."One" AND i."Three" <= i."Four"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	i."Two" >= i."Three"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."One" OR i."Two" = i."One" AND i."Five" >= i."One") AND
	(i."Two" < i."Three" OR i."Two" = i."Three" AND i."Five" <= i."Two")

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."One" OR i."Two" = i."One" AND i."Five" >= i."One") AND
	i."Five" <= i."Two"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."One" OR i."Two" = i."One" AND i."Nil" >= i."One") AND
	(i."Two" < i."Three" OR i."Two" = i."Three" AND i."Nil" <= i."One")

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	i."Nil" >= i."One" AND i."Nil" <= i."Three"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."One" OR i."Two" = i."One" AND i."Five" >= i."Nil") AND
	(i."Two" < i."Three" OR i."Two" = i."Three" AND i."Five" <= i."Nil")

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."One" OR i."Two" = i."One" AND i."Nil" >= i."Nil") AND
	(i."Two" < i."Three" OR i."Two" = i."Three" AND i."Nil" <= i."Nil")

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."Two" > i."Nil" OR i."Two" = i."Nil" AND i."Two" >= i."One") AND
	(i."Two" < i."Three" OR i."Two" = i."Three" AND i."Two" <= i."Five")

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

