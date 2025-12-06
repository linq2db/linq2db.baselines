-- Firebird.5 Firebird4
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = TRUE
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

-- Firebird.5 Firebird4
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = TRUE
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

-- Firebird.5 Firebird4
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Boolean
SET     @Enabled = TRUE
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

-- Firebird.5 Firebird4

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
			"sG"."Enabled" = TRUE AND "sG"."Name" NOT STARTING WITH 'level - ' AND
			CHAR_LENGTH("sG"."ImageFullUrl") > 0
		GROUP BY
			"sG"."Name"
	) "sG_1"
		CROSS JOIN LATERAL (
			SELECT
				"s"."Id",
				"s"."Name",
				"s"."Enabled",
				"s"."ImageFullUrl"
			FROM
				"Stone" "s"
			WHERE
				"s"."Enabled" = TRUE AND
				"s"."Name" NOT STARTING WITH 'level - ' AND
				CHAR_LENGTH("s"."ImageFullUrl") > 0 AND
				"sG_1"."Name" = "s"."Name"
			FETCH NEXT 1 ROWS ONLY
		) "t1"

