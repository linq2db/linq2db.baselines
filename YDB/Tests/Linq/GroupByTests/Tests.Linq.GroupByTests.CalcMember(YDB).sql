-- YDB Ydb

SELECT
	groupedData_1.Key_1 as Key_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			CASE
				WHEN child.FirstName = 'John'u THEN child.FirstName
				ELSE 'a'u
			END as Key_1
		FROM
			Parent groupedData
				CROSS JOIN Person child
		WHERE
			child.PersonID = groupedData.ParentID
	) groupedData_1
GROUP BY
	groupedData_1.Key_1

