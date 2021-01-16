BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1438"
(
	"Id"  Int      GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Has" smallint                              NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Has SmallInt(4) -- Int16
SET     @Has = 1

SELECT
	"Id"
FROM
	NEW TABLE
	(
		INSERT INTO "Issue1438"
		(
			"Has"
		)
		VALUES
		(
			@Has
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1438"

