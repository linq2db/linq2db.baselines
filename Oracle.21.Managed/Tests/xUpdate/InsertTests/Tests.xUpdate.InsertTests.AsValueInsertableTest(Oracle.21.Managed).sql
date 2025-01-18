BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 123
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	ID,
	"FirstName"
)
VALUES
(
	:ID,
	:FirstName
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" x
WHERE
	x.ID = 123 AND x."FirstName" = 'John'

