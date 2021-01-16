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

DROP TABLE "Stone"

