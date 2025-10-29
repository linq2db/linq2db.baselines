-- Informix.DB2 Informix

DROP TABLE IF EXISTS xxPatient

-- Informix.DB2 Informix

CREATE TABLE xxPatient
(
	PersonID  Int           NOT NULL,
	Diagnosis NVarChar(255)     NULL,

	PRIMARY KEY (PersonID)
)

-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	xxPatient t1

-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 1

UPDATE
	xxPatient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

-- Informix.DB2 Informix
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'ABC2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 2

UPDATE
	xxPatient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	xxPatient t1

-- Informix.DB2 Informix

DROP TABLE IF EXISTS xxPatient

