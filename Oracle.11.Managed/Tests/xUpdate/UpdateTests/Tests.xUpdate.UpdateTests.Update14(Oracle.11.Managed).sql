﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
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
-- Oracle.11.Managed Oracle11
DECLARE @name Varchar2(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int32
SET     @idx = 4

UPDATE
	"Person" t1
SET
	"LastName" = CAST(LENGTH(:name) + :idx AS VarChar(255))
WHERE
	t1."FirstName" LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Update14%' ESCAPE '~'

