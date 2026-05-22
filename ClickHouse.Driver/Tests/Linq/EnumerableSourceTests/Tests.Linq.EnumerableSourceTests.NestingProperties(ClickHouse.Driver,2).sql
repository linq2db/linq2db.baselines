-- ClickHouse.Driver ClickHouse

SELECT
	x.FirstName,
	x.ID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	VALUES(
		'Patient_PersonID Nullable(Int32), FirstName Nullable(String), ID Nullable(Int32), LastName Nullable(String), MiddleName Nullable(String), Gender Nullable(FixedString(1))',
		(1, 'Janet', 3, NULL, NULL, 'M'), (NULL, 'Doe', 4, NULL, NULL, 'M')
	) x
WHERE
	x.Patient_PersonID = 1

