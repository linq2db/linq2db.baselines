BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Max(t.PersonID)
FROM
	Person t

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Varchar2(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	:Gender,
	:Name_FirstName,
	:Name_MiddleName,
	:Name_LastName
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 4
DECLARE @take Int32
SET     @take = 2

SELECT 
	p2.PersonID, 
	p2.Gender, 
	p2.FirstName, 
	p2.MiddleName, 
	p2.LastName
FROM
	Person p2
WHERE
	p2.PersonID > :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 4

DELETE FROM
	Person t1
WHERE
	t1.PersonID > :id

