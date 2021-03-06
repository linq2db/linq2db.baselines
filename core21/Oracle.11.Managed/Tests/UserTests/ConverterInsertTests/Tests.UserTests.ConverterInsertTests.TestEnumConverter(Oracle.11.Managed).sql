﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName NVarchar2(3) -- String
SET     @FirstName = '123'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName Varchar2(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarchar2(1) -- String
SET     @Gender = 'M'
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 1

SELECT
	t."PersonID",
	t."FirstName",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	t."PersonID" = :id AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @FirstName Varchar2(3) -- String
SET     @FirstName = '123'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName Varchar2(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :PersonID AND
	t1."FirstName" = :FirstName AND
	t1."LastName" = :LastName AND
	t1."MiddleName" = :MiddleName AND
	t1."Gender" = :Gender

