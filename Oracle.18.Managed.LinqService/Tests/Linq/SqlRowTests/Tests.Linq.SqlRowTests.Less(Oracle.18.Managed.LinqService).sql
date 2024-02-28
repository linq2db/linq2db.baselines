﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @One Int32
SET     @One = 1
DECLARE @Two Int32
SET     @Two = 2
DECLARE @Three Int32
SET     @Three = 3
DECLARE @Four Int32
SET     @Four = 4
DECLARE @Five Int32
SET     @Five = 5
DECLARE @Nil Int32
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
	:One,
	:Two,
	:Three,
	:Four,
	:Five,
	:Nil
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One" < i."One" OR i."One" = i."One" AND i."Two" < i."One" * 2 OR i."One" = i."One" AND i."Two" = i."One" * 2 AND i."Three" < i."Four" - 1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One" < i."One" OR i."One" = i."One" AND i."Two" < i."Two" OR i."One" = i."One" AND i."Two" = i."Two" AND i."Four" < i."Three")

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One" < i."One" OR i."One" = i."One" AND i."Two" < i."Five" OR i."One" = i."One" AND i."Two" = i."Five" AND i."Four" < i."Three")

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One" < i."One" OR i."One" = i."One" AND i."Nil" < i."Two" OR i."One" = i."One" AND i."Nil" = i."Two" AND i."One" < i."Three")

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(0 < i."One" OR 0 = i."One" AND NULL < i."Two" OR 0 = i."One" AND 1 = 0 AND 3 < i."Three")

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Ints"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

