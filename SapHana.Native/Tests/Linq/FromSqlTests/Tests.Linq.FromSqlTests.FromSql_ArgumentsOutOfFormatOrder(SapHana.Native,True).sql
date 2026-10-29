-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1
DECLARE @p_2 NVarChar(1) -- String
SET     @p_2 = 'X'

SELECT
	"p"."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE ("PersonID" = :"p" OR "PersonID" = :"p_1") AND "LastName" <> :"p_2"
	) "p"

