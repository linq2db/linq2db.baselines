BeforeExecute
-- Informix.DB2 Informix
DECLARE @Length Integer(4) -- Int32
SET     @Length = 2

SELECT
	(p5.PersonID * @Length::Int) / 2,
	p5.FirstName
FROM
	Person p5

