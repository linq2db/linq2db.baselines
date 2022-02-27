BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p1 NVarChar(4) -- String
SET     @p1 = 'test'

SELECT
	"p"."PersonID",
	"_gjd_ri"."PersonID",
	"_gjd_ri"."Diagnosis"
FROM
	"Person" "p"
		INNER JOIN "Patient" "_gjd_ri" ON "_gjd_ri"."PersonID" = "p"."PersonID"
WHERE
	Lower("p"."FirstName") LIKE (('%' || Replace(Replace(Replace(Lower(?), '~', '~~'), '%', '~%'), '_', '~_')) || '%') ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @input_1 NVarChar(4) -- String
SET     @input_1 = 'test'

SELECT
	"p"."FirstName",
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE (('%' || Replace(Replace(Replace(Lower(?), '~', '~~'), '%', '~%'), '_', '~_')) || '%') ESCAPE '~'

