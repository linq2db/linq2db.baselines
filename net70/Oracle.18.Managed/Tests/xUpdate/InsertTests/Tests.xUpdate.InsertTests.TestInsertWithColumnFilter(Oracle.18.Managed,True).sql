﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" = :FirstName
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @newName Varchar2(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" x
WHERE
	x."FirstName" = :newName

