BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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

