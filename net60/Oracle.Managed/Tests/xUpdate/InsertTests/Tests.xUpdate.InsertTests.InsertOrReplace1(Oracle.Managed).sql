BeforeExecute
-- Oracle.Managed Oracle12

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)
RETURNING 
	"PersonID" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
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
		t1."Diagnosis" = :Diagnosis
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

BeforeExecute
-- Oracle.Managed Oracle12
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
		t1."Diagnosis" = :Diagnosis
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

BeforeExecute
-- Oracle.Managed Oracle12
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
		t1."Diagnosis" = :Diagnosis
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

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	p."PersonID" = :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

