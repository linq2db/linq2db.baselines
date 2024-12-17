BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	concat('123', p.FirstName, '012345')
FROM
	Person p
WHERE
	p.PersonID = 1 AND (CHAR_LENGTH(concat('123', p.FirstName, '012345')) - positionUTF8(reverseUTF8(Substring(concat('123', p.FirstName, '012345'), 6, CHAR_LENGTH(concat('123', p.FirstName, '012345')) - 5)), '321')) - CHAR_LENGTH('123') = 7 AND
	positionUTF8(concat('123', p.FirstName, '012345'), '123', toUInt32(6)) <> 0

