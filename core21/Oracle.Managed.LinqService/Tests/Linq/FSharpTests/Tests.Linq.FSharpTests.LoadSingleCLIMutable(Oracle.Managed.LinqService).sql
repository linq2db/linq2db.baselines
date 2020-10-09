BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	p.PersonID, 
	p.FirstName, 
	p.LastName, 
	p.MiddleName, 
	p.Gender, 
	a_Patient.PersonID, 
	a_Patient.Diagnosis
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
WHERE
	p.PersonID = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	p.PersonID, 
	p.FirstName, 
	p.LastName, 
	p.MiddleName, 
	p.Gender, 
	a_Patient.PersonID, 
	a_Patient.Diagnosis
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID
WHERE
	p.PersonID = 2
FETCH NEXT :take ROWS ONLY

