BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p Varchar2(4) -- String
SET     @p = 'John'
DECLARE @take Int32
SET     @take = 2

SELECT 
	t.FirstName, 
	t.PersonID, 
	t.LastName, 
	t.MiddleName, 
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = :p
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p Varchar2(6) -- String
SET     @p = 'Tester'
DECLARE @take Int32
SET     @take = 2

SELECT 
	t.FirstName, 
	t.PersonID, 
	t.LastName, 
	t.MiddleName, 
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = :p
FETCH NEXT :take ROWS ONLY

