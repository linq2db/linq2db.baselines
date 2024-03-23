BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Varchar2(10) -- String
SET     @LastName = 'Limonadovy'
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" c_1
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	"Person" c_1
SET
	"FirstName" = :FirstName
WHERE
	c_1."LastName" = 'Limonadovy'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" c_1
WHERE
	c_1."FirstName" = 'Johnny' AND c_1."LastName" = 'Limonadovy'

