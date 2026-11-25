-- PostgreSQL.19 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"UpdateOutputFlaggedRow"
SET
	"NeedsUpdate" = False
FROM
	(
		SELECT
			e."NeedsUpdate",
			e."Id",
			e."Name"
		FROM
			"UpdateOutputFlaggedRow" e
		WHERE
			e."NeedsUpdate"
		ORDER BY
			e."Id"
		LIMIT :take
	) t1
WHERE
	"UpdateOutputFlaggedRow"."Id" = t1."Id"
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

