-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName Varchar2(7) -- String
SET     @LastName = 'Shepard'
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'abc0'

MERGE INTO "Patient" t1
USING (SELECT :PersonID AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'abc1'

MERGE INTO "Patient" t1
USING (SELECT :PersonID AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @PersonID Int32
SET     @PersonID = 5
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'abc2'

MERGE INTO "Patient" t1
USING (SELECT :PersonID AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id
FETCH NEXT 2 ROWS ONLY

