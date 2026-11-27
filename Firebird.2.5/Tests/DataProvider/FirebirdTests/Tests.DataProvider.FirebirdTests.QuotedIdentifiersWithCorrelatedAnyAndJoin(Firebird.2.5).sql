-- Firebird.2.5 Firebird
SELECT
	"f"."Id",
	"f"."Caption",
	"f"."ParentId",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"FirebirdFolderEntity" "f2"
			WHERE
				"f2"."ParentId" = "f"."Id"
		)
			THEN '1'
		ELSE '0'
	END
FROM
	"FirebirdFolderEntity" "f"
		INNER JOIN "FirebirdFolderEntity" "folder2" ON "f"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde'

