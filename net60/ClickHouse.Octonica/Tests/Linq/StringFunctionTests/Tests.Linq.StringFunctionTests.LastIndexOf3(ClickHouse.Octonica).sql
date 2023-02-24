BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ID,
	p_1.FirstName_1
FROM
	(
		SELECT
			concat('123', p.FirstName, '0123451234') as FirstName,
			p.PersonID as ID,
			p.FirstName as FirstName_1
		FROM
			Person p
		WHERE
			p.PersonID = toInt32(1)
	) p_1
WHERE
	CASE
		WHEN positionUTF8(leftUTF8(p_1.FirstName, toInt32(11)), '123', toUInt32(toInt32(6))) = toInt32(0)
			THEN toInt32(-1)
		ELSE toInt32(9) - positionUTF8(reverseUTF8(Substring(p_1.FirstName, toInt32(6), toInt32(6))), '321')
	END = toInt32(8)

