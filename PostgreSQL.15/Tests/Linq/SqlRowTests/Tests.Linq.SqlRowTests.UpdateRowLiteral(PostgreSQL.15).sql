-- PostgreSQL.15 PostgreSQL

UPDATE
	"Ints"
SET
	"One" = "Ints"."Two" * 5,
	("Two", "Three") = (200, "Ints"."Three" * 10),
	("Four", "Nil") = ("Ints"."One" * "Ints"."Four", 600)
WHERE
	"Ints"."One" = 10

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
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

