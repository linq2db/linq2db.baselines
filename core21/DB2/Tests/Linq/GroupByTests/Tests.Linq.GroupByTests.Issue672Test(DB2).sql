BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Stone"
(
	"Id"           Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Name"         NVarChar(255)                              NOT NULL,
	"Enabled"      smallint                                       NULL,
	"ImageFullUrl" NVarChar(255)                                  NULL,

	CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled SmallInt(4) -- Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled SmallInt(4) -- Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled SmallInt(4) -- Int16
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Name"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND "s"."Name" NOT LIKE 'level - %' ESCAPE '~' AND CHARACTER_LENGTH("s"."ImageFullUrl",CODEUNITS32) > 0
GROUP BY
	"s"."Name"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'

SELECT
	"s"."Id",
	"s"."Name",
	"s"."Enabled",
	"s"."ImageFullUrl"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND "s"."Name" NOT LIKE 'level - %' ESCAPE '~' AND CHARACTER_LENGTH("s"."ImageFullUrl",CODEUNITS32) > 0 AND "s"."Name" = @Name

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'

SELECT
	"s"."Id",
	"s"."Name",
	"s"."Enabled",
	"s"."ImageFullUrl"
FROM
	"Stone" "s"
WHERE
	("s"."Enabled" = 1 AND "s"."Enabled" IS NOT NULL) AND "s"."Name" NOT LIKE 'level - %' ESCAPE '~' AND CHARACTER_LENGTH("s"."ImageFullUrl",CODEUNITS32) > 0 AND "s"."Name" = @Name

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Stone"

