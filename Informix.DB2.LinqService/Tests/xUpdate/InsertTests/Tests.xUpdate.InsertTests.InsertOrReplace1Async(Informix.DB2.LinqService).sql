BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO Patient
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
SET     @Diagnosis = 'abc1'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Diagnosis VarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 5

UPDATE
	Patient t1
SET
	Diagnosis = @Diagnosis
WHERE
	t1.PersonID = @PersonID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT FIRST 2
	p.PersonID,
	p.Diagnosis
FROM
	Patient p
WHERE
	p.PersonID = @id

