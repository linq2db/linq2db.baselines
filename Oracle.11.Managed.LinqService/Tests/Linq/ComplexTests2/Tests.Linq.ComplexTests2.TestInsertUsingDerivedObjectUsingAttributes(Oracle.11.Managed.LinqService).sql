﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName NVarchar2(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarchar2(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarchar2(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."FirstName" = 'test_inherited_insert' AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @FirstName NVarchar2(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarchar2(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarchar2(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	"Person" t1
SET
	"FirstName" = :FirstName,
	"LastName" = :LastName,
	"MiddleName" = :MiddleName,
	"Gender" = :Gender
WHERE
	t1."PersonID" = :ID

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."FirstName" = 'test_inherited_insert' AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :ID

