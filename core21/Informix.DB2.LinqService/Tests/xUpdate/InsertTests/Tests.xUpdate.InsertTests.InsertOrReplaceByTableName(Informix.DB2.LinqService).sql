BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient22

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE xxPatient22
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
	xxPatient22
SET
	xxPatient22.Diagnosis = @Diagnosis
WHERE
	xxPatient22.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO xxPatient22
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
	xxPatient22
SET
	xxPatient22.Diagnosis = @Diagnosis
WHERE
	xxPatient22.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO xxPatient22
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
	xxPatient22 t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient22
SET
	xxPatient22.Diagnosis = @Diagnosis
WHERE
	xxPatient22.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient22
SET
	xxPatient22.Diagnosis = @Diagnosis
WHERE
	xxPatient22.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	xxPatient22 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient22

