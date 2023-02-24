BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Topic"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Topic"
		(
			"Id"    Int           NOT NULL,
			"Title" NVarChar(255)     NULL,
			"Text"  NVarChar(255)     NULL,

			CONSTRAINT "PK_Topic" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Message"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Message"
		(
			"Id"      Int           NOT NULL,
			"TopicId" Int           NOT NULL,
			"Text"    NVarChar(255)     NULL,

			CONSTRAINT "PK_Message" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 60
DECLARE @TopicId Integer(4) -- Int32
SET     @TopicId = 6
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 61
DECLARE @TopicId Integer(4) -- Int32
SET     @TopicId = 7
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"key_data_result"."Id",
	"detail"."Id"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT
					"x"."Id"
				FROM
					"Topic" "x"
				WHERE
					"x"."Id" = 6
				FETCH FIRST 1 ROWS ONLY
			) "t1"
	) "key_data_result"
		INNER JOIN "Message" "detail" ON "detail"."TopicId" = "key_data_result"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Message"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Topic"';
END

