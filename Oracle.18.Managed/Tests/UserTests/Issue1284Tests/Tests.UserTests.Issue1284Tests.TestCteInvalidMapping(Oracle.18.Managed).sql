BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

WITH CTE_1
(
	ID,
	"rn",
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		person_1."PersonID" as "entry_1",
		1 as "rn",
		person_1."FirstName",
		person_1."LastName",
		person_1."MiddleName",
		person_1."Gender"
	FROM
		"Person" person_1
)
SELECT
	t1."FirstName",
	t1.ID,
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	CTE_1 t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	person_1."FirstName",
	person_1."PersonID",
	person_1."LastName",
	person_1."MiddleName",
	person_1."Gender"
FROM
	"Person" person_1
FETCH NEXT :take ROWS ONLY

