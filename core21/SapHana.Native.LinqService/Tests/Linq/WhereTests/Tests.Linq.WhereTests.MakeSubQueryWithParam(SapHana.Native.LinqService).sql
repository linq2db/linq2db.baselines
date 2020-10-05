BeforeExecute
-- SapHana.Native SapHana
DECLARE @n_1_1  -- Int32
SET     @n_1_1 = 1

SELECT
	"p_1"."PersonID",
	"p_1"."FirstName"
FROM
	(
		SELECT
			"p"."PersonID" + :"n_1_1" as "PersonID",
			"p"."FirstName"
		FROM
			"Person" "p"
	) "p_1"
WHERE
	"p_1"."PersonID" = 2

