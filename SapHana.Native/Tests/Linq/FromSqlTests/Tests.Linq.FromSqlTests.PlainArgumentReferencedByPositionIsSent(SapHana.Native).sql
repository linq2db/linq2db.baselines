-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	"p"."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :"p" OR "PersonID" = ?
	) "p"
ORDER BY
	"p"."PersonID"

