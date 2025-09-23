BeforeExecute
-- Informix.DB2 Informix
DECLARE @Length Integer(4) -- Int32
SET     @Length = 2

SELECT
	(p2.PersonID * 2) / @Length::Int,
	p2.FirstName
FROM
	Person p2

