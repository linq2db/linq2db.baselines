-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DROP TABLE IF EXISTS "BatchLater"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
-- Command 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1
ORDER BY
	t1."Id"
LIMIT :take

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchLater" t1
	)
-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
-- Command 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."Value",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1
ORDER BY
	t1."Id"
LIMIT :take

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchLater" t1
	)
