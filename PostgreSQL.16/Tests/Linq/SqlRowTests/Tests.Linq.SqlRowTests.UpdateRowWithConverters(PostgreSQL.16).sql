-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Cents Integer -- Int32
SET     @Cents = 100

UPDATE
	"ConvertedInts"
SET
	("Cents", "Ints") = (src."Cents" + :Cents, src."Ints" * src."Cents")
FROM
	"ConvertedInts" x
		LEFT JOIN "ConvertedInts" src ON src."Id" = x."Id" - 1
WHERE
	x."Id" = 2 AND "ConvertedInts"."Id" = x."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Cents",
	x."Ints"
FROM
	"ConvertedInts" x
WHERE
	x."Id" = 2
LIMIT 2

