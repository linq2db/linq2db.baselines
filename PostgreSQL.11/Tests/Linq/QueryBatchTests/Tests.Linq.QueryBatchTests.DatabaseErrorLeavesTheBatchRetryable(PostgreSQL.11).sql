-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "BatchLater"

-- PostgreSQL.11 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL
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
