-- YDB Ydb

SELECT
	p.PersonID as ID,
	pt.PersonID as PersonID,
	d.Taxonomy as Taxonomy
FROM
	Person p
		CROSS JOIN Patient pt
		CROSS JOIN Doctor d
ORDER BY
	p.PersonID,
	pt.PersonID,
	d.Taxonomy

