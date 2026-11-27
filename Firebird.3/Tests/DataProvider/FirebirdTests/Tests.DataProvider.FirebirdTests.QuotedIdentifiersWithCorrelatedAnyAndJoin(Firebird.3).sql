-- Firebird.3 Firebird3
SELECT
	"f"."Id",
	"f"."Caption",
	"f"."ParentId",
	EXISTS(
		SELECT
			*
		FROM
			"FirebirdFolderEntity" "f2"
		WHERE
			"f2"."ParentId" = "f"."Id"
	)
FROM
	"FirebirdFolderEntity" "f"
		INNER JOIN "FirebirdFolderEntity" "folder2" ON "f"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde'

