BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

WITH "CTE_1" ("Operator")
AS
(
	SELECT
		x."LastName"
	FROM
		"Person" x
)
SELECT
	t1."Operator"
FROM
	"CTE_1" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."LastName"
FROM
	"Person" x
LIMIT :take

