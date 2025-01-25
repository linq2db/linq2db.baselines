BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"f"."Id",
	"f"."Caption",
	"f"."ParentId",
	EXISTS(
		SELECT
			*
		FROM
			"Issue76Entity" "f2"
		WHERE
			"f2"."ParentId" = "f"."Id"
	)
FROM
	"Issue76Entity" "f"
		INNER JOIN "Issue76Entity" "folder2" ON "f"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde'

