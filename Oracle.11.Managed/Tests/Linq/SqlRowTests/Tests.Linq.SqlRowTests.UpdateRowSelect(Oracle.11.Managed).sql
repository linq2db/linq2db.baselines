-- Oracle.11.Managed Oracle11

UPDATE
	"Ints" i
SET
	"One" = i."Two" * 5,
	("Two", "Three") = (
		SELECT
			i."Two" * 10,
			j."Three" * 100
		FROM
			"Ints" j
		WHERE
			j."One" = 1
	),
	("Four", "Nil") = (
		SELECT
			i."One" * i."Four",
			600
		FROM SYS.DUAL
	)
WHERE
	i."One" = 10

-- Oracle.11.Managed Oracle11

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

