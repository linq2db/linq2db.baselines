-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	@Id,
	@SomeText
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."SomeText" = 'Value1_suffix'
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."Id" = 1
FETCH NEXT 2 ROWS ONLY

