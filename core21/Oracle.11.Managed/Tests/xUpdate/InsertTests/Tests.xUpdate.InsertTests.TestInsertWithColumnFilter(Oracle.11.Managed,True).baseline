BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
	:FirstName,
	:LastName,
	:MiddleName,
	:Gender
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName_1 Varchar2(18) -- String
SET     @FirstName_1 = 'InsertColumnFilter'
DECLARE @take Int32
SET     @take = 1

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = :FirstName_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @newName Varchar2(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	Person x
WHERE
	x.FirstName = :newName

