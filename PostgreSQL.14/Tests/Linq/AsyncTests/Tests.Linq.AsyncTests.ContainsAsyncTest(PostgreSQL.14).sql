-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN :ID IN (
			SELECT
				t1."PersonID"
			FROM
				"Person" t1
		)
			THEN True
		ELSE False
	END

