BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	concat('123', p.FirstName, '0123451234')
FROM
	Person p
WHERE
	p.PersonID = 1 AND 1 = positionUTF8(reverseUTF8(Substring(concat('123', p.FirstName, '0123451234'), 6, 6)), '321') AND
	positionUTF8(leftUTF8(concat('123', p.FirstName, '0123451234'), 11), '123', toUInt32(6)) <> 0

