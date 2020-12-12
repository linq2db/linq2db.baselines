BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p_1 Text(4) -- String
SET     @p_1 = 'test'

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE '%' || Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(:p_1), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]') || '%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @input_1 Text(4) -- String
SET     @input_1 = 'test'

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE '%' || Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(:input_1), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]') || '%' ESCAPE '~'

