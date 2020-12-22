BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS xxPatient

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE xxPatient
(
	PersonID  Int           NOT NULL,
	Diagnosis NVarChar(255)     NULL,

	PRIMARY KEY (PersonID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient
SET
	xxPatient.Diagnosis = @Diagnosis
WHERE
	xxPatient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO xxPatient
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
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient
SET
	xxPatient.Diagnosis = @Diagnosis
WHERE
	xxPatient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO xxPatient
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
-- Informix.DB2 Informix (asynchronously)

SELECT
	Count(*)
FROM
	xxPatient t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient
SET
	xxPatient.Diagnosis = @Diagnosis
WHERE
	xxPatient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient
SET
	xxPatient.Diagnosis = @Diagnosis
WHERE
	xxPatient.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Count(*)
FROM
	xxPatient t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS xxPatient

