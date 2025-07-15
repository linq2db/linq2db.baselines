BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Ints"
SET
	"One" = "Ints"."Two" * 5,
	("Two", "Three") = (
		SELECT
			"Ints"."Two" * 10,
			j."Three" * 100
		FROM
			"Ints" j
		WHERE
			j."One" = 1
	),
	("Four", "Nil") = ("Ints"."One" * "Ints"."Four", 600)
WHERE
	"Ints"."One" = 10

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

