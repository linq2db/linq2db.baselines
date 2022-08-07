BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN p.PersonID = toInt32(1)
			THEN true
		ELSE false
	END
FROM
	Person p

