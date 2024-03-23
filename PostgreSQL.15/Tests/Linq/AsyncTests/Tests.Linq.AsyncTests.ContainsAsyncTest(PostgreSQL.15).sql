BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
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

