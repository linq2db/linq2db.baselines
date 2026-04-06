-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1

SELECT
	CASE
		WHEN CAST($ID AS INTEGER) IN (
			SELECT
				t1.PersonID
			FROM
				Person t1
		)
			THEN True
		ELSE False
	END

