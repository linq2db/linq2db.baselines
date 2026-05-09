-- DuckDB

SELECT
	(
		SELECT
			STRING_AGG(CAST(a_Children.ChildID AS VARCHAR), ', ')
		FROM
			Child a_Children
		WHERE
			s.ParentID = a_Children.ParentID
	)
FROM
	Parent s

