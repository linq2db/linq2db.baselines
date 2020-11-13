BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Patient" t1

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Doctor" t1

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	"Person" t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 1'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 1'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'
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
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 2'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 2'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 3'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 3'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'O'
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
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 4'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 4'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
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
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 5'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 5'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'
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
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(7) -- String
SET     @FirstName = 'first 6'
DECLARE @LastName Varchar2(6) -- String
SET     @LastName = 'last 6'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
-- Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 9
DECLARE @Taxonomy Varchar2(10) -- String
SET     @Taxonomy = 'Dr. Lector'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	:PersonID,
	:Taxonomy
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 10
DECLARE @Taxonomy Varchar2(10) -- String
SET     @Taxonomy = 'Dr. who???'

INSERT INTO "Doctor"
(
	"PersonID",
	"Taxonomy"
)
VALUES
(
	:PersonID,
	:Taxonomy
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 7
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'sick'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 8
DECLARE @Diagnosis Varchar2(9) -- String
SET     @Diagnosis = 'very sick'

INSERT INTO "Patient"
(
	"PersonID",
	"Diagnosis"
)
VALUES
(
	:PersonID,
	:Diagnosis
)

BeforeExecute
-- Oracle.Managed Oracle12

MERGE INTO "Person" Target
USING (
	SELECT
		t1."PersonID" as ID,
		t1."FirstName",
		a_Patient."Diagnosis"
	FROM
		"Person" t1
			LEFT JOIN "Patient" a_Patient ON t1."PersonID" = a_Patient."PersonID"
) "Source"
ON (Target."PersonID" = "Source".ID AND "Source"."FirstName" = 'first 4')

WHEN MATCHED THEN
UPDATE
SET
	Target."LastName" = "Source"."FirstName"

DELETE WHERE
	EXISTS(
	SELECT
		*
	FROM
		"Patient" a_Patient_1
	WHERE
		"Source"."Diagnosis" = 'very sick' AND a_Patient_1."Diagnosis" = 'very sick' AND
		Target."PersonID" = a_Patient_1."PersonID"
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"

