BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	(p5.PersonID * CHAR_LENGTH('22')) / 2,
	p5.FirstName
FROM
	Person p5

