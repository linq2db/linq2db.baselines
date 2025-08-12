BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled SmallInt(4) -- Boolean
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
DECLARE @Enabled SmallInt(4) -- Boolean
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
DECLARE @Enabled SmallInt(4) -- Boolean
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
	"t1"."Id",
	"t1"."Name",
	"t1"."Enabled",
	"t1"."ImageFullUrl"
FROM
	(
		SELECT
			"sG"."Name"
		FROM
			"Stone" "sG"
		WHERE
			"sG"."Enabled" = 1 AND "sG"."Name" NOT LIKE 'level - %' ESCAPE '~' AND
			CHAR_LENGTH("sG"."ImageFullUrl") > 0
		GROUP BY
			"sG"."Name"
	) "sG_1"
		INNER JOIN (
			SELECT
				"s"."Id",
				"s"."Name",
				"s"."Enabled",
				"s"."ImageFullUrl",
				ROW_NUMBER() OVER (PARTITION BY "s"."Name" ORDER BY "s"."Name") as "rn"
			FROM
				"Stone" "s"
			WHERE
				"s"."Enabled" = 1 AND "s"."Name" NOT LIKE 'level - %' ESCAPE '~' AND
				CHAR_LENGTH("s"."ImageFullUrl") > 0
		) "t1" ON "sG_1"."Name" = "t1"."Name" AND "t1"."rn" <= 1

