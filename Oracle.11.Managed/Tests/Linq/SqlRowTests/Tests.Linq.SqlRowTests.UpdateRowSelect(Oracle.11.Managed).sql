-- Oracle.11.Managed Oracle11

UPDATE
	"Ints"
SET
	"Nil" = 600,
	("One", "Four", "Two", "Three") = (
		SELECT
			i_1."Two" * 5,
			i_1."One" * i_1."Four",
			i_1."Two" * 10,
			j_1."Three" * 100
		FROM
			"Ints" i_1
				LEFT JOIN "Ints" j_1 ON j_1."One" = 1
		WHERE
			i_1."One" = 10 AND "Ints"."Id" = i_1."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Ints" i
				LEFT JOIN "Ints" j ON j."One" = 1
		WHERE
			i."One" = 10 AND "Ints"."Id" = i."Id"
	)

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

