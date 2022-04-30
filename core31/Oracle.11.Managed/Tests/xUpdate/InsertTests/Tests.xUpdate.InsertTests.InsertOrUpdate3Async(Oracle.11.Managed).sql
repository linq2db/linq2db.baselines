﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP SEQUENCE "PersonSeq"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "PersonSeq" MINVALUE 1 START WITH 5

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"Person" p
WHERE
	p."FirstName" = 'John' AND p."LastName" = 'Shepard'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 0

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		'abc'
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 1

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		'abc'
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5
DECLARE @i Int32
SET     @i = 2

MERGE INTO "Patient" t1
USING (SELECT :id AS "PersonID" FROM SYS.DUAL) s ON
(
	t1."PersonID" = s."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."Diagnosis" = Cast((Length(t1."Diagnosis") + :i) as VarChar2(11))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		:id,
		'abc'
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
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
	p."PersonID" = :id AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	"Patient" t1
WHERE
	t1."PersonID" = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 5

DELETE FROM
	"Person" t1
WHERE
	t1."PersonID" = :id

