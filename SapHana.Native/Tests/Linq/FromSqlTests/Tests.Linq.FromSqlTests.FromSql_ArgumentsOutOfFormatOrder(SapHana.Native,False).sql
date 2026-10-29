-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = 'X'

SELECT
	"p"."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = :"p" AND "LastName" <> :"p_1"
	) "p"

