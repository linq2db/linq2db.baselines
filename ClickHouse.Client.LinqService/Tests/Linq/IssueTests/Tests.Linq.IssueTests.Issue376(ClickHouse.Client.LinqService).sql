BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.PersonID,
	a_Doctor.PersonID,
	a_Doctor_1.PersonID,
	a_Doctor_1.Taxonomy
FROM
	Person t1
		LEFT JOIN Doctor a_Doctor ON t1.PersonID = a_Doctor.PersonID
		LEFT JOIN Doctor a_Doctor_1 ON t1.PersonID = a_Doctor_1.PersonID
WHERE
	(CHAR_LENGTH(a_Doctor.Taxonomy) >= 0 OR a_Doctor.Taxonomy IS NULL)

