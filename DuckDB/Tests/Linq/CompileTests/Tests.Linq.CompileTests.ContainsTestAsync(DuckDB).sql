-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1

SELECT
	CASE
		WHEN $ParentID IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN True
		ELSE False
	END

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = -1

SELECT
	CASE
		WHEN $ParentID IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN True
		ELSE False
	END

