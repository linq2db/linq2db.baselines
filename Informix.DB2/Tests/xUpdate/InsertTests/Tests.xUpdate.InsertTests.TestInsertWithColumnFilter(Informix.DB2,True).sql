﻿BeforeExecute
--  Informix.DB2 Informix
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
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
--  Informix.DB2 Informix
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT FIRST 1
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = @FirstName

BeforeExecute
--  Informix.DB2 Informix
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	Person
WHERE
	Person.FirstName = @newName

