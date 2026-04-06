-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1

SELECT
	CASE
		WHEN CAST($ParentID AS INTEGER) IN (
			SELECT
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID = 1
		)
			THEN True
		ELSE False
	END

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2

SELECT
	CASE
		WHEN CAST($ParentID AS INTEGER) IN (
			SELECT
				p.ParentID
			FROM
				Parent p
			WHERE
				p.ParentID = 1
		)
			THEN True
		ELSE False
	END

