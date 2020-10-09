BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL (asynchronously)
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

