BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE xxPatient12

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE xxPatient12
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
	xxPatient12
SET
	xxPatient12.Diagnosis = @Diagnosis
WHERE
	xxPatient12.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO xxPatient12
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
	xxPatient12
SET
	xxPatient12.Diagnosis = @Diagnosis
WHERE
	xxPatient12.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO xxPatient12
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
	xxPatient12 t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient12
SET
	xxPatient12.Diagnosis = @Diagnosis
WHERE
	xxPatient12.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient12
SET
	xxPatient12.Diagnosis = @Diagnosis
WHERE
	xxPatient12.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Count(*)
FROM
	xxPatient12 t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE xxPatient12

