-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ID as ID,
		t1.FirstName as FirstName,
		t1.LastName as LastName,
		t1.MiddleName as MiddleName,
		t1.Gender as Gender
	FROM
		(VALUES
			(10,'FN1'u,'LN1'u,CAST(NULL AS Text),'M'u),
			(11,'FN2'u,NULL,NULL,'F'u)
		) t1(ID, FirstName, LastName, MiddleName, Gender)
;

SELECT
	p.FirstName as FirstName,
	p.ID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	$CTE_1 p
WHERE
	p.ID = 11

