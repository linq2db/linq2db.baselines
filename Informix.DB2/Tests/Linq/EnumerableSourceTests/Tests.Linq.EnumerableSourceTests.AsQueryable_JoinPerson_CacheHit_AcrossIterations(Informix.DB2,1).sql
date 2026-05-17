-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 11

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT @Id::Int AS Id FROM table(set{1})
			UNION ALL
			SELECT @Id_1::Int FROM table(set{1})) r ON p.PersonID = r.Id

