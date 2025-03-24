﻿BeforeExecute
--  Oracle.11.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
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
--  Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" = :FirstName AND ROWNUM <= 1

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	"Person" t1
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"Gender" = :Gender
WHERE
	t1."PersonID" = :ID

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @FirstName Varchar2(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" = :FirstName AND ROWNUM <= 1

