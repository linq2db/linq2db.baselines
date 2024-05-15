BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2816Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2816Table"
		(
			"Id"   Int           NOT NULL,
			"Text" NVarChar(255)     NULL,

			CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 0
DECLARE @Text VarChar -- String
SET     @Text = ''

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(1) -- String
SET     @Text = 'a'

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Text VarChar(3) -- String
SET     @Text = ' m '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Text VarChar(1) -- String
SET     @Text = ' '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Text VarChar(2) -- String
SET     @Text = '  '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Text VarChar -- String
SET     @Text = NULL

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Id",
	"p"."Text"
FROM
	"Issue2816Table" "p"
WHERE
	("p"."Text" IS NULL OR LTRIM("p"."Text", '	
                 　') = '')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"Issue2816Table" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2816Table"';
END

