BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient12"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

CREATE TABLE "xxPatient12"
(
	"PersonID"  Int          NOT NULL,
	"Diagnosis" VarChar(255)     NULL,

	CONSTRAINT "PK_xxPatient12" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient12" t1
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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient12" t1
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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient12" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient12" t1
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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient12" t1
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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient12" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient12"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

