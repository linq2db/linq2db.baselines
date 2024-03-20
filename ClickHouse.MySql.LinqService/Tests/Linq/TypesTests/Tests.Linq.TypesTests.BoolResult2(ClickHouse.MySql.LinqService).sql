BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN a_Patient.PersonID IS NOT NULL
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID

