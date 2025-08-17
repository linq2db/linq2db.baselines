BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 0
DECLARE @diagnosis Int32
SET     @diagnosis = 3

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(Length(t1."Diagnosis") + :i AS VarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		CAST(:diagnosis + :i AS VarChar(255))
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 1
DECLARE @diagnosis Int32
SET     @diagnosis = 3

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(Length(t1."Diagnosis") + :i AS VarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		CAST(:diagnosis + :i AS VarChar(255))
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 2
DECLARE @diagnosis Int32
SET     @diagnosis = 3

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Diagnosis" = CAST(Length(t1."Diagnosis") + :i AS VarChar(255))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		CAST(:diagnosis + :i AS VarChar(255))
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id AND ROWNUM <= 2

