-- Firebird.2.5 Firebird
DECLARE @r3 Integer -- Int32
SET     @r3 = 3

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = @r3

