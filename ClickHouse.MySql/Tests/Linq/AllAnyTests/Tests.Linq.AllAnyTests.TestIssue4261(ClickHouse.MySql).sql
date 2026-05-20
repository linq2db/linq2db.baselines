-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			VALUES('item Nullable(String)', ('John'), ('Not John')) y
		WHERE
			y.item = x.FirstName
	)

