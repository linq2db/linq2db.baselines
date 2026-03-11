-- Firebird.3 Firebird3

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("ParentId", "Label")
AS
(
	SELECT
		"c_1"."ParentId",
		"c_1"."Label"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NOT NULL
)
SELECT
	X'BC7B663D0FDE43278F925D8CC3A11D11',
	"parent"."Label" || '/' || "child"."Label"
FROM
	CTE "child"
		INNER JOIN "TestFolder" "parent" ON "child"."ParentId" = "parent"."Id"

