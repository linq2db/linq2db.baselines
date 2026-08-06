-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 20

WITH "partHierarchy" ("RootPartSortField", "RootPartId", "PartId")
AS
(
	SELECT
		"t1"."RootPartSortField",
		"t1"."RootPartId",
		"t1"."RootPartId"
	FROM
		(
			SELECT
				"x"."Name" as "RootPartSortField",
				"x"."Id" as "RootPartId"
			FROM
				"Issue5457Part" "x"
			ORDER BY
				"x"."Name"
			OFFSET 0 ROWS FETCH NEXT @take ROWS ONLY 
		) "t1"
	UNION ALL
	SELECT
		"t2"."RootPartSortField",
		"t2"."RootPartId",
		"reference"."ReferenceId"
	FROM
		"partHierarchy" "t2",
		"Issue5457Reference" "reference"
	WHERE
		"reference"."ParentId" = "t2"."PartId"
)
SELECT
	"id"."RootPartId",
	"id"."RootPartSortField",
	"me"."Id",
	"me"."Name"
FROM
	"Issue5457Part" "me"
		INNER JOIN "partHierarchy" "id" ON "me"."Id" = "id"."PartId"

