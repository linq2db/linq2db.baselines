BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Varchar2(4) -- String
SET     @ID = 'John'
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = :ID
FETCH NEXT :take ROWS ONLY

