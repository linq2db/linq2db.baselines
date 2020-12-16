BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p_2 Varchar2(6) -- String
SET     @p_2 = '%test%'

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE :p_2 ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @input_2 Varchar2(6) -- String
SET     @input_2 = '%test%'

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE :input_2 ESCAPE '~'

