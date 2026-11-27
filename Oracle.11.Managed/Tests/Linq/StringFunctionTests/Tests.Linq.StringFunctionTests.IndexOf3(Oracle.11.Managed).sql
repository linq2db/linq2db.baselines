-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = 7
DECLARE @s Varchar2(1) -- String
SET     @s = 'e'
DECLARE @Value_1 Int32
SET     @Value_1 = 3

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	InStr(Substr(p."LastName", 1, :Value), :s, :Value_1) - 1 = 4 AND
	p."PersonID" = 2

