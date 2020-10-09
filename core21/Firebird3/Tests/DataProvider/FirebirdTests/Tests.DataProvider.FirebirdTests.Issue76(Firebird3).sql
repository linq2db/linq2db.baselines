BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue76Entity"
(
	"Id"       BigInt                                 NOT NULL,
	"Caption"  VarChar(255) CHARACTER SET UNICODE_FSS,
	"ParentId" BigInt
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"folder"."Id", 
	"folder"."Caption", 
	"folder"."c1"
FROM
	( 
		SELECT 
			NULL as "ParentId", 
			"f"."Id", 
			"f"."Caption", 
			CASE WHEN EXISTS(
				SELECT 
					*
				FROM
					"Issue76Entity" "f2"
				WHERE
					"f2"."ParentId" = "f"."Id"
			) THEN 1 ELSE 0 END as "c1"
		FROM
			"Issue76Entity" "f"
	) "folder"
		INNER JOIN "Issue76Entity" "folder2" ON "folder"."ParentId" = "folder2"."Id"
WHERE
	"folder2"."Caption" = 'dewde'

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue76Entity"

