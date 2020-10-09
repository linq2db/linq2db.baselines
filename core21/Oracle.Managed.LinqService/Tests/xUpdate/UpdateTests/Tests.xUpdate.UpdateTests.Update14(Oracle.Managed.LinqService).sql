BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @FirstName Varchar2(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName Varchar2(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName Varchar2 -- String
SET     @MiddleName = NULL
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
-- Oracle.Managed Oracle12
DECLARE @name Varchar2(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int32
SET     @idx = 4

UPDATE
	Person
SET
	Person.LastName = Cast((Length(:name) + :idx) as VarChar2(11))
WHERE
	Person.FirstName LIKE 'Update14%'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Count(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Update14%'

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Update14%'

