-- DuckDB
DECLARE $p INTEGER -- Int32
SET     $p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = $p
	)

-- DuckDB
DECLARE $p INTEGER -- Int32
SET     $p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID = $p
	)

