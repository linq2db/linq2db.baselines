BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.ID,
	p_1.FirstName_1
FROM
	(
		SELECT
			concat('123', p.FirstName, '012345') as FirstName,
			p.PersonID as ID,
			p.FirstName as FirstName_1
		FROM
			Person p
		WHERE
			p.PersonID = toInt32(1)
	) p_1
WHERE
	CASE
		WHEN positionUTF8(p_1.FirstName, '123', toUInt32(toInt32(6))) = toInt32(0)
			THEN toInt32(-1)
		ELSE CHAR_LENGTH(p_1.FirstName) - positionUTF8(reverseUTF8(Substring(p_1.FirstName, toInt32(6), CHAR_LENGTH(p_1.FirstName) - toInt32(5))), '321') - toInt32(2)
	END = toInt32(8)

