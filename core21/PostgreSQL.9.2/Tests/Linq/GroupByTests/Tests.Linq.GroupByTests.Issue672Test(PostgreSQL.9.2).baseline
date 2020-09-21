BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Stone"
(
	"Id"           SERIAL   NOT NULL,
	"Name"         text     NOT NULL,
	"Enabled"      Boolean      NULL,
	"ImageFullUrl" text         NULL,

	CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl Text(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl Text(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl Text(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO "Stone"
(
	"Name",
	"Enabled",
	"ImageFullUrl"
)
VALUES
(
	:Name,
	:Enabled,
	:ImageFullUrl
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	s."Name"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' AND Length(s."ImageFullUrl") > 0
GROUP BY
	s."Name"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name_1 Text(6) -- String
SET     @Name_1 = 'group2'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name_1 Text(6) -- String
SET     @Name_1 = 'group1'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Stone"

