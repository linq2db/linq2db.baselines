-- SapHana.Native SapHana
DECLARE @FirstName NVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender NVarChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	:"FirstName",
	'LastName',
	:"Gender"
)

