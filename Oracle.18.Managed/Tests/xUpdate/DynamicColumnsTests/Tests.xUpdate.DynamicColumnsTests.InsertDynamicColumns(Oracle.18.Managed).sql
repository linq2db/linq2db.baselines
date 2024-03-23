BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Varchar2(11) -- String
SET     @LastName = 'The Dynamic'
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:Gender
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'John' AND c_1."LastName" = 'The Dynamic'

