BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient23"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE "xxPatient23"
(
	"PersonID"  Int          NOT NULL,
	"Diagnosis" VarChar(255)     NULL,

	CONSTRAINT "PK_xxPatient23" PRIMARY KEY ("PersonID")
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient23" t1
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
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient23" t1
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
-- Oracle.Managed Oracle12 (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient23" t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO "xxPatient23" t1
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
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO "xxPatient23" t1
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
-- Oracle.Managed Oracle12 (asynchronously)

SELECT
	Count(*)
FROM
	"xxPatient23" t1

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "xxPatient23"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

