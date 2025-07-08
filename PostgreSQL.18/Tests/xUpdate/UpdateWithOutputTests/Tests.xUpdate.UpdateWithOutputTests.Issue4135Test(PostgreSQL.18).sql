BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table"
SET
	"NeedsUpdate" = False
FROM
	(
		SELECT
			e."NeedsUpdate",
			e."Id",
			e."Name"
		FROM
			"Issue4135Table" e
		WHERE
			e."NeedsUpdate"
		ORDER BY
			e."Id"
		LIMIT :take
	) t1
WHERE
	"Issue4135Table"."Id" = t1."Id"
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

