BeforeExecute
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
				"Issue76Entity" "f2"
			WHERE
				"f2"."ParentId" = "f"."Id"
		)
			THEN '1'
		ELSE '0'
	END
FROM
	"Issue76Entity" "f"
		INNER JOIN "Issue76Entity" "folder2" ON "f"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde'

