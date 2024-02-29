BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.PersonID,
	a_Doctor.PersonID,
	a_Doctor.Taxonomy
FROM
	Person _
		LEFT JOIN Doctor a_Doctor ON _.PersonID = a_Doctor.PersonID
WHERE
	(CHAR_LENGTH(a_Doctor.Taxonomy) >= toInt32(0) OR a_Doctor.Taxonomy IS NULL)

