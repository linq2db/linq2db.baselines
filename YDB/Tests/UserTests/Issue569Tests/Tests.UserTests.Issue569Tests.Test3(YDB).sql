-- YDB Ydb

SELECT
	p.PersonID as PersonID,
	pt.PersonID as PersonID_1,
	d.Taxonomy as Taxonomy
FROM
	Person p
		CROSS JOIN Patient pt
		CROSS JOIN Doctor d
ORDER BY
	p.PersonID,
	pt.PersonID,
	d.Taxonomy

