BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1316Tests"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

SELECT
	"_".ID
FROM
	"Issue1316Tests" "_"
WHERE
	"_".ID = @ID
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5

SELECT
	"_".ID
FROM
	"Issue1316Tests" "_"
WHERE
	"_".ID = @Id
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1316Tests"

