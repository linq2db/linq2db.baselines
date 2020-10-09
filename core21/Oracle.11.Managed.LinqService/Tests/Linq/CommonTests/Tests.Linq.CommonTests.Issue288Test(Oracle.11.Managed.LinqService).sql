BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ID Varchar2(4) -- String
SET     @ID = 'John'
DECLARE @take Int32
SET     @take = 1

SELECT 
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = :ID AND ROWNUM <= :take

