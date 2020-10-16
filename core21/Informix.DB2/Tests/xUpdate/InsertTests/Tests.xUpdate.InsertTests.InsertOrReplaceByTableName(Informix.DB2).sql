BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient11

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE xxPatient11
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
	xxPatient11
SET
	xxPatient11.Diagnosis = @Diagnosis
WHERE
	xxPatient11.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'

INSERT INTO xxPatient11
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
	xxPatient11
SET
	xxPatient11.Diagnosis = @Diagnosis
WHERE
	xxPatient11.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'

INSERT INTO xxPatient11
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
	xxPatient11 t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient11
SET
	xxPatient11.Diagnosis = @Diagnosis
WHERE
	xxPatient11.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient11
SET
	xxPatient11.Diagnosis = @Diagnosis
WHERE
	xxPatient11.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	xxPatient11 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE xxPatient11

