BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Ints"
SET
	"One" = "Ints"."Two" * 5,
	("Two", "Three") = ("Ints"."Two" * 10, j."Three" * 100),
	("Four", "Nil") = ("Ints"."One" * "Ints"."Four", 600)
FROM
	"Ints" j
WHERE
	"Ints"."One" = 10 AND j."One" = 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."One",
	t1."Two",
	t1."Three",
	t1."Four",
	t1."Five",
	t1."Nil"
FROM
	"Ints" t1
ORDER BY
	t1."One"

