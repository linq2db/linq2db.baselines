BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'test'
DECLARE @LastName Varchar2(7) -- String
SET     @LastName = 'subject'
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5
DECLARE @Diagnosis Varchar2(8) -- String
SET     @Diagnosis = 'negative'

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		:Diagnosis
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5
DECLARE @Diagnosis Varchar2(8) -- String
SET     @Diagnosis = 'positive'

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		:Diagnosis
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id

