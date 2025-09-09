BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @r3 Integer -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = @r3

