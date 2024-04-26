﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Ints" ("One", "Two", "Three", "Four", "Five", "Nil") VALUES (1,2,3,4,5,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One" > i."One" OR i."One" = i."One" AND i."Two" > i."One" * 2 OR i."One" = i."One" AND i."Two" = i."One" * 2 AND i."Three" >= i."Four" - 1)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One" > i."One" OR i."One" = i."One" AND i."Two" > i."Two" OR i."One" = i."One" AND i."Two" = i."Two" AND i."Four" >= i."Three")

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One" > i."One" OR i."One" = i."One" AND i."Two" > i."Five" OR i."One" = i."One" AND i."Two" = i."Five" AND i."Four" >= i."Three")

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(i."One" > i."One" OR i."One" = i."One" AND i."Nil" > i."Two" OR i."One" = i."One" AND i."Nil" = i."Two" AND i."Four" >= i."Three")

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Ints" i
WHERE
	(2 > i."One" OR 2 = i."One" AND NULL > i."Two")

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

