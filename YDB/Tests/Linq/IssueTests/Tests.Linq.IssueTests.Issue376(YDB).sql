-- YDB Ydb

SELECT
	t1.PersonID as ID,
	a_Doctor.PersonID as PersonID,
	a_Doctor.Taxonomy as Taxonomy
FROM
	Person t1
		LEFT JOIN Doctor a_Doctor ON t1.PersonID = a_Doctor.PersonID
WHERE
	CAST(Unicode::GetLength(a_Doctor.Taxonomy) AS Int32) >= 0 OR
	a_Doctor.Taxonomy IS NULL

