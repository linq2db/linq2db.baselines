BeforeExecute
-- PostgreSQL.9.2 PostgreSQL (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" t1
		WHERE
			t1."PersonID" = :ID
	)

