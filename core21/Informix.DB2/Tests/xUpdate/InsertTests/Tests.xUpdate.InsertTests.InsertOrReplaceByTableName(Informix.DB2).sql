BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient21

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE xxPatient21
(
	PersonID  Int           NOT NULL,
	Diagnosis NVarChar(255)     NULL,

	PRIMARY KEY (PersonID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient21
SET
	xxPatient21.Diagnosis = @Diagnosis
WHERE
	xxPatient21.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO xxPatient21
(
	PersonID,
	Diagnosis
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient21
SET
	xxPatient21.Diagnosis = @Diagnosis
WHERE
	xxPatient21.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO xxPatient21
(
	PersonID,
	Diagnosis
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	xxPatient21 t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient21
SET
	xxPatient21.Diagnosis = @Diagnosis
WHERE
	xxPatient21.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient21
SET
	xxPatient21.Diagnosis = @Diagnosis
WHERE
	xxPatient21.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	xxPatient21 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient21

