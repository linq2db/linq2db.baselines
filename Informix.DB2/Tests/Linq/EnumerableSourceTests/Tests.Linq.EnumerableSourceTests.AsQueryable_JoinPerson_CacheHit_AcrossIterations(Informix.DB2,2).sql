-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Integer(4) -- Int32
SET     @Id_2 = 22

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
			SELECT @Id_1::Int FROM table(set{1})
			UNION ALL
			SELECT @Id_2::Int FROM table(set{1})) r ON p.PersonID = r.Id

