BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE xxPatient21';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE xxPatient21
(
	PersonID  Int          NOT NULL,
	Diagnosis VarChar(255)     NULL,

	CONSTRAINT PK_xxPatient21 PRIMARY KEY (PersonID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO xxPatient21 t1
USING (SELECT :PersonID AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO xxPatient21 t1
USING (SELECT :PersonID AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	xxPatient21 t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PersonID Int32
SET     @PersonID = 1
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC1'

MERGE INTO xxPatient21 t1
USING (SELECT :PersonID AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @PersonID Int32
SET     @PersonID = 2
DECLARE @Diagnosis Varchar2(4) -- String
SET     @Diagnosis = 'ABC2'

MERGE INTO xxPatient21 t1
USING (SELECT :PersonID AS PersonID FROM SYS.DUAL) s ON
(
	t1.PersonID = s.PersonID
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1.Diagnosis = :Diagnosis
WHEN NOT MATCHED THEN
	INSERT
	(
		PersonID,
		Diagnosis
	)
	VALUES
	(
		:PersonID,
		:Diagnosis
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	xxPatient21 t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE xxPatient21';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

