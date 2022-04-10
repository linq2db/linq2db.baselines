BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Max(t."PersonID")
FROM
	"Person" t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	'LastName',
	:Gender
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 4

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" > :id

