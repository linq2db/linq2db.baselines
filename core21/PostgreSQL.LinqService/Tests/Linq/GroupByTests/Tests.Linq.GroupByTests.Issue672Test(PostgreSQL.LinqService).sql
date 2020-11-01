BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Stone"
(
	"Id"           SERIAL   NOT NULL,
	"Name"         text     NOT NULL,
	"Enabled"      Boolean      NULL,
	"ImageFullUrl" text         NULL,

	CONSTRAINT "PK_Stone" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	s."Name"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND Length(s."ImageFullUrl") > 0
GROUP BY
	s."Name"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'group2'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'group1'

SELECT
	s."Id",
	s."Name",
	s."Enabled",
	s."ImageFullUrl"
FROM
	"Stone" s
WHERE
	(s."Enabled" = True AND s."Enabled" IS NOT NULL) AND
	s."Name" NOT LIKE 'level - %' ESCAPE '~' AND
	Length(s."ImageFullUrl") > 0 AND
	s."Name" = :Name

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "Stone"

