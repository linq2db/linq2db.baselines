BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"Ints"
SET
	"One" = "Ints"."Two" * 5,
	("Two", "Three") = (
		SELECT
			"Ints"."Two" * 10,
			j_1."Three" * 100
		FROM
			"Ints" i_1,
			"Ints" j_1
		WHERE
			i_1."One" = 10 AND
			j_1."One" = 1 AND
			"Ints"."One" = i_1."One" AND
			"Ints"."Two" = i_1."Two" AND
			"Ints"."Three" = i_1."Three" AND
			"Ints"."Four" = i_1."Four" AND
			"Ints"."Five" = i_1."Five" AND
			("Ints"."Nil" = i_1."Nil" OR "Ints"."Nil" IS NULL AND i_1."Nil" IS NULL)
	),
	("Four", "Nil") = (
		SELECT
			"Ints"."One" * "Ints"."Four",
			600
		FROM
			"Ints" i_2,
			"Ints" j_2
		WHERE
			i_2."One" = 10 AND
			j_2."One" = 1 AND
			"Ints"."One" = i_2."One" AND
			"Ints"."Two" = i_2."Two" AND
			"Ints"."Three" = i_2."Three" AND
			"Ints"."Four" = i_2."Four" AND
			"Ints"."Five" = i_2."Five" AND
			("Ints"."Nil" = i_2."Nil" OR "Ints"."Nil" IS NULL AND i_2."Nil" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Ints" i,
			"Ints" j
		WHERE
			i."One" = 10 AND
			j."One" = 1 AND
			"Ints"."One" = i."One" AND
			"Ints"."Two" = i."Two" AND
			"Ints"."Three" = i."Three" AND
			"Ints"."Four" = i."Four" AND
			"Ints"."Five" = i."Five" AND
			("Ints"."Nil" = i."Nil" OR "Ints"."Nil" IS NULL AND i."Nil" IS NULL)
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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

